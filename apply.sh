#!/bin/bash

SUBSCRIPTION_ID=""
RESOURCE_GROUP=""
APIM_NAME=""

az rest --method PUT --uri "https://management.azure.com/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCE_GROUP}/providers/Microsoft.ApiManagement/service/${APIM_NAME}/backends/aoai-backend-ptu?api-version=2023-09-01-preview" -b @./backend-ptu.json

az rest --method PUT --uri "https://management.azure.com/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCE_GROUP}/providers/Microsoft.ApiManagement/service/${APIM_NAME}/backends/aoai-backend-payg?api-version=2023-09-01-preview" -b @./backend-payg.json

az rest --method PUT --uri "https://management.azure.com/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCE_GROUP}/providers/Microsoft.ApiManagement/service/${APIM_NAME}/backends/aoai-lb?api-version=2023-09-01-preview" -b @./aoai-lb.json
