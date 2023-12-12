struct UIGenTestRequest {
    // 名称
	1: required string Name (api.header= 'Name')
	// 创建账户
	2: required string CreateUser (api.body= 'CreateUser')
	// 创建时间
	3: required string CreateTime (api.query = 'CreateTime')
	// 更新时间
	4: required string UpdateTime
	// 更新账户
    5: required string UpdateUser
}

struct UIGenTestResponse {
    // 名称
	1: required string Name (api.header= 'Name')
	// 创建账户
	2: required string CreateUser (api.body= 'CreateUser')
	// 创建时间
	3: required string CreateTime (api.query = 'CreateTime')
	// 更新时间
	4: required string UpdateTime
	// 更新账户
    5: required string UpdateUser
}

service ApiService {
    // testtest
    UIGenTestResponse UITest(1: UIGenTestRequest req) (api.get="/gitlab/path/job1212", api.name="testtest")
}
