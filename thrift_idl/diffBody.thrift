struct TestRequest {
    1: required string Name(api.header = 'Name'),
    2: required string Namea(api.header = 'Namea'),
    3: required string Nameb(api.header = 'Nameb'),
    4: required string Namec(api.header = 'Namec'),
    5: required string Named(api.header = 'Named'),
    6: required string Namee(api.header = 'Namee'),
    7: required string Namef(api.header = 'Namef'),
    8: required string Nameg(api.header = 'Nameg'),
    9: required string Nameh(api.header = 'Nameh'),
    10: required string Namei(api.header = 'Namei'),
    11: required string Namej(api.query = 'Namej'),
    12: required string Namek(api.query = 'Namek'),
    13: required string Namel(api.query = 'Namel'),
    14: required string Namem(api.query = 'Namem'),
    15: required string Namen(api.query = 'Namen'),
    16: required string Nameo(api.query = 'Nameo'),
    17: required string Namep(api.query = 'Namep'),
    18: required string Nameq(api.query = 'Nameq'),
    19: required string Namer(api.query = 'Namer'),
    20: required string Names(api.query = 'Names'),
    21: required string Namet(api.body = 'Namet'),
    22: required string Nameu(api.body = 'Nameu'),
    23: required string Namev(api.body = 'Namev'),
    24: required string Namew(api.body = 'Namew'),
    25: required string Namex(api.body = 'Namex'),
    26: required string Namey(api.body = 'Namey'),
    27: required string Namez(api.body = 'Namez'),
    28: required string Nameaa(api.body = 'Nameaa'),
    29: required string Namebb(api.body = 'Namebb'),
    30: required string Namecc(api.body = 'Namecc'),
}

struct TestResponse {
	1: required string Name (api.header= 'Name')
    2: required string Namea(api.header = 'Namea'),
    3: required string Nameb(api.header = 'Nameb'),
    4: required string Namec(api.header = 'Namec'),
    5: required string Named(api.header = 'Named'),
    6: required string Namee(api.header = 'Namee'),
    7: required string Namef(api.header = 'Namef'),
    8: required string Nameg(api.header = 'Nameg'),
    9: required string Nameh(api.header = 'Nameh'),
    10: required string Namei(api.header = 'Namei'),
}

service ApiService {
    // body=json,resp=json
    TestResponse APITest00001 (1: TestRequest req) (api.post="/github/alpha4/API01", api.name="接口API01", api.serializer = 'json', api.resp_serializer = 'json')
    // body=form,resp=form
    TestResponse APITest00002 (1: TestRequest req) (api.post="/github/alpha4/API02", api.name="接口API02", api.serializer = 'form', api.resp_serializer = 'form')
    // body=pb,resp=pb
    TestResponse APITest00003 (1: TestRequest req) (api.post="/github/alpha4/API03", api.name="接口API03", api.serializer = 'pb', api.resp_serializer = 'pb')
    // body=muti-form,resp=muti-form
    TestResponse APITest00004 (1: TestRequest req) (api.post="/github/alpha4/API04", api.name="接口API04", api.serializer = 'muti-form', api.resp_serializer = 'muti-form')
    // body=form,json,resp=json,pb
    TestResponse APITest00005 (1: TestRequest req) (api.post="/github/alpha4/API05", api.name="接口API05", api.serializer = 'form,json', api.resp_serializer = 'json,pb')

}
