
struct CreateAdminUserRequest {
    1: required string UserName // 姓名
    2: required string UserEmail // 邮箱
    3: optional BirthInfo Birth // 出生信息
    4: optional list<InterestInfo> InterestList // 兴趣列表
}

struct BirthInfo {
    1: optional AddressInfo Address // 出生地址信息
    2: required string Date // 出生日期
    3: optional double Weight // 出生体重，单位kg
}

struct AddressInfo {
    1: required string Location // 地址
    2: optional string PostalCode // 邮政编码
    3: required AddressType AddressTypeName
}

struct InterestInfo {
    1: required InterestCode Code // 兴趣编号
    2: required string Name // 兴趣名称
}

struct CreateAdminUserResponse {
    1: i64 UserID
}

struct DeleteAdminUserRequest {
    1: required i64 UserID
}

struct GetAdminUserRequest {
    1: required i64 UserID
}

struct GetAdminUserResponse {
    1: required i64 UserID
    2: required string UserName 
    3: required string UserEmail 
}

struct UpdateAdminUserRequest {
    1: required i64 UserID
    2: optional string UserName 
    3: optional string UserEmail 
    4: optional BirthInfo Birth
    5: optional list<InterestInfo> InterestList
}

enum InterestCode {
    InterestCodeFootball = 1
    InterestCodeBasketball = 2
}

typedef string AddressType 

const AddressType AddressTypeCity = "city"
const AddressType AddressTypeProvince = "province"