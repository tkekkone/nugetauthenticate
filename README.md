# nugetauthenticate
Populate env for nuget restore to happen fluently. 

Runs dotnet restore --interactive on the path given as only argument. It then fetches the .dat file created by dotnet commmand and formats it correctly to be used from environment variable VSS_NUGET_EXTERNAL_FEED_ENDPOINTS. This is useful when running build in docker and this can then be passed to build args.
