#!/bin/bash
unset VSS_NUGET_EXTERNAL_FEED_ENDPOINTS
dotnet restore --interactive $1
creds=$(cat $HOME/.local/share/MicrosoftCredentialProvider/SessionTokenCache.dat | jq   'to_entries[] | {endpoint: .key, password: .value}' | jq -s '{endpointCredentials: .}')
echo $creds
export VSS_NUGET_EXTERNAL_FEED_ENDPOINTS=$creds
