
var navs = [
	{
		"title": "图书查询",
		"icon": "fa-cubes",
		"spread": false,
		"href": "reader/reader_books.html"
	}, {
		"title": "我的借还",
		"icon": "fa-cogs",
		"spread": false,
		"children": [
			{
				"title": "我想还书",
				"icon": "fa-table",
				"href": "reader/reader_return_books .html"
			}, {
				"title": "借还管理",
				"icon": "fa-navicon",
				"href": "reader/reader_lend_list.html"
			}
		]
	},{
		"title": "图书挂失",
		"icon": "fa-cogs",
		"spread": false,
		"children": [
			{
				"title": "挂失",
				"icon": "fa-table",
				"href": "reader/reader_guashi_books.html"
			}, {
				"title": "解挂",
				"icon": "fa-navicon",
				"href": "reader/reader_jiegua_books.html"
			}
		]
	},{
		"title": "个人信息",
		"icon": "&#x1002;",
		"href": "reader/reader_info.html",
		"spread": false
	}, {
		"title": "修改密码",
		"icon": "fa-address-book",
		"href": "reader/reader_repasswd.html",
		"spread": false
	}
];