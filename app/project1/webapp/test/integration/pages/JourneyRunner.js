sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/employeeList",
	"project1/test/integration/pages/employeeObjectPage"
], function (JourneyRunner, employeeList, employeeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheemployeeList: employeeList,
			onTheemployeeObjectPage: employeeObjectPage
        },
        async: true
    });

    return runner;
});

