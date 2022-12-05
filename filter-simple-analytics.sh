#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

egrep ".atlassian.net|jira.|confluence.|.zoom|sharepoint|wiki|intranet|webex|feishu.cn|aws.|.corp" export.csv > corp-referrers.csv

     

