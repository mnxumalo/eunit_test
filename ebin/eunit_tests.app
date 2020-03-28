{application, 'eunit_tests', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['eunit_tests_app','eunit_tests_sup','fibber','fizzbuzz','test_all','test_fibber','test_fizzbuzz']},
	{registered, [eunit_tests_sup]},
	{applications, [kernel,stdlib]},
	{mod, {eunit_tests_app, []}},
	{env, []}
]}.