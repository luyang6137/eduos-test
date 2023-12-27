struct TestRequest {
    // 名称
	1: required string Name (api.header= 'Name')
}

struct TestResponse {
    // 名称
	1: required string Name (api.header= 'Name')
}

service ApiService {
    TestResponse UITesta (1: TestRequest req) (api.get="/gitlab/alpha2/path1?Action=getInfo", api.name="接口API111")
    TestResponse UITestb.test (1: TestRequest req) (api.get="/gitlab/alpha2/path2?Action=getInfo", api.name="接口API222")
    TestResponse UITestc (1: TestRequest req) (api.get="/gitlab/alpha2/path3?", api.name="接口API333")
    TestResponse UITestd (1: TestRequest req) (api.get="/gitlab/alpha2/path4?Action", api.name="接口API444")
    TestResponse UITeste (1: TestRequest req) (api.get="/gitlab/alpha2/path5?Action=test&Action=test", api.name="接口API555")
    TestResponse UITestf (1: TestRequest req) (api.get="/gitlab/alpha2/path6?Action=test&ID=test", api.name="接口API666")
    TestResponse UITestg (1: TestRequest req) (api.get="/gitlab/alpha2/path7?ID=test&Action=test", api.name="接口API777")
}
