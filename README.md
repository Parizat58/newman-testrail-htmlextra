# newman-testrail-htmlextra


[![Docker Pulls](https://img.shields.io/docker/pulls/parizat58/testrail-htmlextra?style=flat-square)](https://hub.docker.com/r/parizat58/testrail-htmlextra)


A [Newman](https://github.com/postmanlabs/newman) HTML reporter and testrail reporter that could be used in connecting testrail and generating html report at the same run. 

## Example report
**htmlextra**: Please refer to the npm package page [newman-reporter-htmlextra](https://www.npmjs.com/package/newman-reporter-htmlextra)

**testrail**: Please refer to the npm package page [newman-reporter-testrail](https://www.npmjs.com/package/newman-reporter-testrail)

For further cli options and configuration, please refer to the official npm package or the following artical:

[How to Integrate TestRail with Postman / Newman API Tests](https://medium.com/apis-with-valentine/how-to-integrate-testrail-with-postman-newman-api-tests-cc0380998d04)


## Usage
- pull the image and run the container with the following command. Once the run has finished it will create a report html file in the `/newman` directory and will report the results to testrail:

```console
docker run -t -v $(pwd):/etc/newman --env TESTRAIL_DOMAIN={domain_here} --env TESTRAIL_USERNAME={username_here} --env TESTRAIL_APIKEY={api_key_here} --env TESTRAIL_TITLE={test_run_title_here} --env TESTRAIL_PROJECTID={project_id_here} --env TESTRAIL_RUNID={run_id_here} --env TESTRAIL_LOGGING={headers, none, default=full} parizat58/testrail-htmlextra run <URL to Collection or collection.json file> -e <URL to Environment or environment.json file> -r testrail,htmlextra```
