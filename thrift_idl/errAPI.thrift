struct TestRequest {
    // 名称
	1: required string Name (api.header= 'Name')
}

struct TestResponse {
    // 名称
	1: required string Name (api.header= 'Name')
}

service ApiService {
    TestResponse UITesta (1: TestRequest req) (api.get="/gitlab/alpha2/path1", api.name="接口API111")
    TestResponse UITestb (1: TestRequest req) (api.get="/gitlab/alpha2/path2?Action=getInfo", api.name="接口API222")
    TestResponse UITestc (1: TestRequest req) (api.get="/gitlab/alpha2/path3?", api.name="接口API333")
    TestResponse UITestd (1: TestRequest req) (api.get="/gitlab/alpha2/path4?Action", api.name="接口API444")
    TestResponse UITesti (1: TestRequest req) (api.get="/gitlab/alpha2/path4?Action=", api.name="接口API4555")
    TestResponse UITeste (1: TestRequest req) (api.get="/gitlab/alpha2/path5?Action=test&Action=test", api.name="接口API555")
    TestResponse UITestf (1: TestRequest req) (api.get="/gitlab/alpha2/path?Action=test&ID=test", api.name="接口API666")
    TestResponse UITestg (1: TestRequest req) (api.get="/gitlab/alpha2/path?ID=test&Action=test", api.name="接口API777")
    TestResponse UITesth (1: TestRequest req) (api.get="/gitlab/alpha2/path7/apim?a=abc&a=cba", api.name="接口API888")
}
