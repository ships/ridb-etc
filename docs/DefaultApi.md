# \DefaultApi

All URIs are relative to *https://www.recreation.gov/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**permit_division_search_availability**](DefaultApi.md#permit_division_search_availability) | **get** /permits/{permitId}/divisions/{divisionId}/availability | search for availability dates on a permit site


# **permit_division_search_availability**
> ::models::SearchAvailabilityOk permit_division_search_availability(permit_id, division_id, optional)
search for availability dates on a permit site

This endpoint reports open, bookable entry dates for permitted divisions.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **permit_id** | **i32**| id of the permit to search for (corresponds to facility) | 
  **division_id** | **i32**| id of the division to search for (corresponds to permit entrance) | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permit_id** | **i32**| id of the permit to search for (corresponds to facility) | 
 **division_id** | **i32**| id of the division to search for (corresponds to permit entrance) | 
 **start_date** | **String**| return records not before this date (iso8601) | 
 **end_date** | **String**| return records not after this date (iso8601) | 
 **commercial_acct** | **bool**| is this request coming from a commercial account | 
 **is_lottery** | **bool**| not yet known | 

### Return type

[**::models::SearchAvailabilityOk**](SearchAvailabilityOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

