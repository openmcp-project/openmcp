#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Usage: $0 <ocm-ctf>"
    echo "Example: $0 openmcp-ctf/"
    exit 1
fi

CTF_DIR="$1"

references=$(ocm get references "$CTF_DIR///github.com/openmcp-project/openmcp" -o json|jq -r '.items[].element | "\(.name) \(.componentName) \(.version)"')

echo "$references" | while read -r name repo version; do
    export REPO=$name
    gh release view "$version" --repo "$repo" --json tagName,body,url \
    | jq '. + {"componentName": env.REPO}' \
    | jq -r -f ./hack/component.tpl \
    | sed "s/^##\ /### /g" # improve formatting until upstream formatting is fixed.
done
