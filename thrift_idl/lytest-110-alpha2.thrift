include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 超长>8182
    lytest.GetLogFileTreeResponse LongPathErr (1: lytest.GetLogFileTreeRequest req) (api.post="/eduosapi/110alpha2/path11", api.name="params超长")
    // header数量=100
    lytest.DemoResponse MuchHeaders (1: lytest.MuchHeaderRequest req) (api.post="/eduosapi/110alpha2/path22", api.name="header超多")
    // header\params\body注解验证
    lytest.DemoResponse AnnoVerify (1: lytest.AnnoRequest req) (api.post="/eduosapi/110alpha2/path33", api.name="注解验证")
    // 路径正则验证
    lytest.DemoResponse PathVerify (1: lytest.AnnoRequest req) (api.post="/eduosapi/110alpha2/path44?Action=ListInfo&Name=test&ID=123", api.name="路径正则验证")
    // 路径验证
    lytest.DemoResponse PathVerify (1: lytest.AnnoRequest req) (api.post="/eduosapi/110alpha2/path1234/wertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwer/wertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwer/wertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwer/wertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwer?Action=ListInfo&Name=test&ID=123", api.name="路径正则验证")
}
