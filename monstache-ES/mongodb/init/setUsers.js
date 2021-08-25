db = db.getSiblingDB('admin')

// admin user 생성
db.createUser(
        {
            user: "admin",
            pwd: "Input the Password!!!",
            roles: [
                {
                    role: "userAdminAnyDatabase",
                    db: "admin"
                },
                {
                    role: "dbAdminAnyDatabase",
                    db: "admin"
                },
                {
                    role: "readWriteAnyDatabase",
                    db: "admin"
                }
            ]
        }
);

db.grantRolesToUser(
    "admin",
    [ "clusterManager" ]
)

db = db.getSiblingDB('dataon')

// dataon 데이터베이스전용 user 생성
db.createUser({
    user: "mongo",
    pwd: "Input the Password!!!",
    roles: [
        {
            role: "readWrite",
            db: "dataon"
        }
    ]
})