select lsmode(493); -- 8進数755

select optimize(0);

select sha3(0);

select sha3(0,1);
select sha3(0,512);

select shell_int32(0, 0);
select shell_int32(hex(0xFF), 0);

select shell_putsnl('A');

select shell_module_schema('sqlite_master');

select shell_escape_crnl('AAA');
select shell_escape_crnl('A
B');
select shell_escape_crnl('A\nB');

select shell_add_schema('create table T(A text);', 0);
select shell_add_schema('create table T(A text);');

select sqlar_compress('A');

select sqlar_uncompress(sqlar_compress('AAA'), hex(sqlar_compress('AAA'))/2);

select zipfile_cds('a.zip');

.shell echo 'AAA' > a.txt
.shell zip a.zip a.txt
.headers on
select * from zipfile('a.zip');

