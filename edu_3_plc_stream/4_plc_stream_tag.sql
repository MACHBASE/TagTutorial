EXEC STREAM_CREATE(event_v0, 'insert into tag select ''MTAG_V00'', tm, v0 from plc_tag_table;');
EXEC STREAM_CREATE(event_v1, 'insert into tag select ''MTAG_V01'', tm, v1 from plc_tag_table;');
EXEC STREAM_CREATE(event_c0, 'insert into tag select ''MTAG_C00'', tm, c0 from plc_tag_table;');
EXEC STREAM_CREATE(event_c1, 'insert into tag select ''MTAG_C01'', tm, c1 from plc_tag_table;');
EXEC STREAM_CREATE(event_c2, 'insert into tag select ''MTAG_C02'', tm, c2 from plc_tag_table;');
EXEC STREAM_CREATE(event_c3, 'insert into tag select ''MTAG_C03'', tm, c3 from plc_tag_table;');
EXEC STREAM_CREATE(event_c4, 'insert into tag select ''MTAG_C04'', tm, c4 from plc_tag_table;');
EXEC STREAM_CREATE(event_c5, 'insert into tag select ''MTAG_C05'', tm, c5 from plc_tag_table;');
EXEC STREAM_CREATE(event_c6, 'insert into tag select ''MTAG_C06'', tm, c6 from plc_tag_table;');
EXEC STREAM_CREATE(event_c7, 'insert into tag select ''MTAG_C07'', tm, c7 from plc_tag_table;');
EXEC STREAM_CREATE(event_c8, 'insert into tag select ''MTAG_C08'', tm, c8 from plc_tag_table;');
EXEC STREAM_CREATE(event_c9, 'insert into tag select ''MTAG_C09'', tm, c9 from plc_tag_table;');
EXEC STREAM_CREATE(event_c10, 'insert into tag select ''MTAG_C10'', tm, c10 from plc_tag_table;');
EXEC STREAM_CREATE(event_c11, 'insert into tag select ''MTAG_C11'', tm, c11 from plc_tag_table;');
EXEC STREAM_CREATE(event_c12, 'insert into tag select ''MTAG_C12'', tm, c12 from plc_tag_table;');
EXEC STREAM_CREATE(event_c13, 'insert into tag select ''MTAG_C13'', tm, c13 from plc_tag_table;');
EXEC STREAM_CREATE(event_c14, 'insert into tag select ''MTAG_C14'', tm, c14 from plc_tag_table;');
EXEC STREAM_CREATE(event_c15, 'insert into tag select ''MTAG_C15'', tm, c15 from plc_tag_table;');

EXEC STREAM_START(event_v0);
EXEC STREAM_START(event_v1);
EXEC STREAM_START(event_c0);
EXEC STREAM_START(event_c1);
EXEC STREAM_START(event_c2);
EXEC STREAM_START(event_c3);
EXEC STREAM_START(event_c4);
EXEC STREAM_START(event_c5);
EXEC STREAM_START(event_c6);
EXEC STREAM_START(event_c7);
EXEC STREAM_START(event_c8);
EXEC STREAM_START(event_c9);
EXEC STREAM_START(event_c10);
EXEC STREAM_START(event_c11);
EXEC STREAM_START(event_c12);
EXEC STREAM_START(event_c13);
EXEC STREAM_START(event_c14);
EXEC STREAM_START(event_c15);

SELECT * from v$streams;
