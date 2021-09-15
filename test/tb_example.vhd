LIBRARY vunit_lib;
CONTEXT vunit_lib.vunit_context;

ENTITY tb_example IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF tb_example IS

BEGIN

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        REPORT "Hello World";
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;