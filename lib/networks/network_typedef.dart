import 'package:http/http.dart';
import 'package:gsb_invest_coach/networks/network_enums.dart';

typedef NetworkCallBack<R> = R Function(Map<String, dynamic>);

/// if NetworkResponseErrorType.exception, the function will give String parameter otherwise Response
typedef NetworkOnFailureCallback<R> = R Function(
    NetworkResponseErrorType, String?, Response?);
