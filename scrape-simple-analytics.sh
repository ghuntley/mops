#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

curl "https://simpleanalytics.com/api/export/datapoints?version=5&format=csv&hostname=ghuntley.com&start=2022-10-01&end=2025-10-31&robots=false&timezone=UTC&fields=added_date%2Cadded_iso%2Cadded_unix%2Cbrowser_name%2Cbrowser_version%2Ccountry_code%2Cdevice_type%2Cdocument_referrer%2Cduration_seconds%2Chostname%2Chostname_original%2Cis_robot%2Cis_unique%2Clang_language%2Clang_region%2Cos_name%2Cos_version%2Cpath%2Cpath_and_query%2Cquery%2Cscreen_height%2Cscreen_width%2Cscrolled_percentage%2Csession_id%2Cuser_agent%2Cutm_campaign%2Cutm_content%2Cutm_medium%2Cutm_source%2Cutm_term%2Cuuid%2Cviewport_height%2Cviewport_width&type=pageviews" \
     -H "User-Id: ${SA_USER_ID}" \
     -H "Api-Key: ${SA_API_KEY}" \
     -H "Content-Type: text/csv"

