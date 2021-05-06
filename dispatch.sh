#!/bin/sh
curl --header "Content-Type: application/json" \
	--header "Authorization: Bearer ${GITHUB_TOKEN}" \
	--request POST \
	--data '{"event_type": "redeploy_app"}' \
	"https://api.github.com/repos/${GITHUB_ORGANIZATION}/${GITHUB_REPOSITORY}/dispatches"
