create table machine_usage(
    machine_id int,
    machine_name varchar(50),
    usage_hour int,
    location varchar(30),
    failure_count int,
    last_service_date date,
    CONSTRAINT machine_id_pk primary key(machine_id)

);


create table spare_part_usage(
    machine_id int,
    part_id varchar(20),
    part_name varchar(40),
    quntity_used int,
    usage_date date,
    CONSTRAINT part_id_fk foreign key(part_id) referances inventory(part_id)
    CONSTRAINT machine_id_fk foreign key(machine_id) referances machine_usage(machine_id)

);


create table inventory(
    part_id varchar(20),
    part_name varchar(40),
    stock_quntity int,
     CONSTRAINT part_id_pk primary key(part_id)
)