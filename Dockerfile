#image
FROM microsoft/dotnet:2.2-aspnetcore-runtime

ENV CORECLR_ENABLE_PROFILING=1 \
CORECLR_PROFILER={22222222-0000-1111-XXXX-xxxxxxxxxxxxxx} \
CORECLR_NEWRELIC_HOME=/usr/local/newrelic-netcore20-agent \
CORECLR_PROFILER_PATH=/usr/local/newrelic-netcore20-agent/libNewRelicProfiler.so

WORKDIR /app

ENV ASPNETCORE_URLS http://+:80

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["dotnet", "API.dll"]