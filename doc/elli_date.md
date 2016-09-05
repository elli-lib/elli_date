

# Module elli_date #
* [Description](#description)
* [Function Index](#index)
* [Function Details](#functions)

Middleware adding the "Date" HTTP header to Elli normal
responses.

__Behaviours:__ [`elli_handler`](elli_handler.md).

<a name="description"></a>

## Description ##
Errors handled by Elli itself will not have the "Date"
header. The value is cached and updated once a second by
elli_date_server<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#handle-2">handle/2</a></td><td></td></tr><tr><td valign="top"><a href="#handle_event-3">handle_event/3</a></td><td></td></tr><tr><td valign="top"><a href="#postprocess-3">postprocess/3</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="handle-2"></a>

### handle/2 ###

`handle(X1, X2) -> any()`

<a name="handle_event-3"></a>

### handle_event/3 ###

`handle_event(X1, X2, Config) -> any()`

<a name="postprocess-3"></a>

### postprocess/3 ###

`postprocess(Req, Res, Config) -> any()`

