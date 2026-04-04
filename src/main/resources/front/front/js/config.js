var projectName = '社区老年食堂订餐系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [
    {
        name: '个人中心',
        url: '../' + localStorage.getItem('userTable') + '/center.html'
    }
    ,{
        name: '菜品收藏',
        url: '../caipinCollection/list.html'
    }
    ,{
        name: '菜品订单',
        url: '../caipinOrder/list.html'
    }

]


var indexNav = [

    {
        name: '菜品',
        url: './pages/caipin/list.html'
    },
    {
        name: '论坛',
        url: './pages/forum/list.html'
    },
    {
        name: '公告信息',
        url: './pages/news/list.html'
    },
    {
        name: '食堂介绍',
        url: './pages/singleSeach/detail.html?id=1'
    },
    {
        name: '联系我们',
        url: './pages/singleSeach/detail.html?id=2'
    },

]

var adminurl =  "http://localhost:8080/canyinguanli/admin/dist/index.html#/login";



// 后期要改
var menu = [
{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"员工","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"供应商","menuJump":"列表","tableName":"gongyingshang"}],"menu":"供应商管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"菜品","menuJump":"列表","tableName":"caipin"}],"menu":"菜品管理"},{"child":[{"buttons":["查看","删除"],"menu":"菜品订单","menuJump":"列表","tableName":"caipinOrder"}],"menu":"订单管理"},{"child":[{"buttons":["查看","删除"],"menu":"菜品收藏","menuJump":"列表","tableName":"caipinCollection"}],"menu":"收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","menuJump":"列表","tableName":"news"}],"menu":"公告管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"论坛","menuJump":"列表","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"菜品列表","menuJump":"列表","tableName":"caipin"}],"menu":"菜品模块"},{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"news"}],"menu":"公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"菜品","menuJump":"列表","tableName":"caipin"}],"menu":"菜品管理"},{"child":[{"buttons":["查看"],"menu":"菜品订单","menuJump":"列表","tableName":"caipinOrder"}],"menu":"我的订单"},{"child":[{"buttons":["查看"],"menu":"菜品收藏","tableName":"caipinCollection"}],"menu":"我的收藏"}],"frontMenu":[{"child":[{"buttons":["查看","查看评论"],"menu":"菜品列表","menuJump":"列表","tableName":"caipin"}],"menu":"菜品模块"},{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"news"}],"menu":"公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}
]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
