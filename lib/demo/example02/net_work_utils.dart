/**
 **@time
 **@author xyc
 **@description:
 **/
class NetworkUtils{
  static void requestNetData(int type,{Function? callback}){
    callback?.call(type);
  }
}