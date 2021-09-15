LIBRARY vunit_lib;
CONTEXT vunit_lib.vunit_context;

ENTITY tb_example_many IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF tb_example_many IS

BEGIN

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);

        WHILE test_suite LOOP
            IF run("test_pass") THEN
                REPORT "Das wird klappen";
            ELSIF run("test_fail") THEN
                ASSERT true REPORT "Passt";
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;