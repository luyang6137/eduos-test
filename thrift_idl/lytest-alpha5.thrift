
include "common.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 测试1
    lytest.GetLogFileTreeResponse GetLogFileTree2(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path1", api.name="相同路径_lytest")
    // 测试2
    lytest.GetLogFileTreeResponse GetLogFileTree3(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path2", api.name="相同路径_lytest2")
    // 业务测试
    lytest.GetLogFileTreeResponse GetLogFileTree4(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/status/200", api.name="返回200")
}
