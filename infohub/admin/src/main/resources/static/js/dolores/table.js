//初始化
function init(option) {
    //重构dolores_option
    rebuildOption(option, dolores_option);
    //加载表格数据
    loadTable();
    //初始化表格
    initTable();
    //初始化表格头部
    initThead();
    //初始化表格主体
    initTbody();
    //隐藏数据加载层
    hideLoading();
    //追加主体
    appendTbody();
    //初始化页数信息
    initPageInfo();
    //初始化页数
    initPage();
}

function searchData() {
    $("#dolores-tbody").empty();
    loadTable();
    initTbody();
    appendTbody();
    hideLoading();
}

//重构表格选项对象
function rebuildOption(option) {
    rewriteObj(option, dolores_option);
}

function loadData(action, page) {
    $("#dolores-tbody").empty();
    if (action === 'pre') {
        dolores_option.pageDetail.pageNum = dolores_option.pageDetail.prePage;
    } else if (action === 'next') {
        dolores_option.pageDetail.pageNum = dolores_option.pageDetail.nextPage;
    } else if (action === 'page') {
        dolores_option.pageDetail.pageNum = page;
    }
    loadTable();
    initTbody();
    appendTbody();
    hideLoading();
}

//加载表单
function loadTable() {
    $('#dolores-tbody').hide();
    //获取表格id
    const tableId = dolores_option.tableId;
    //赋值表格id
    $("[name=dolores-table]").attr('id', tableId);
    //获取数据地址
    const url = dolores_option.url;
    //获取查询参数
    const queryParams = $.param(dolores_option.queryParam);
    //获取页数对象
    const pageDetail = dolores_option.pageDetail;
    $.ajax({
        url: url + '?pageNum=' + pageDetail.pageNum + '&pageSize=' + $('#dolores-pageSize').val() + '&' + queryParams,
        type: 'GET',
        async: false,
        dataType: 'JSON',
        contentType: 'application/json; charset=utf-8',
        success: function (resp) {
            const pageInfo = resp.pageInfo;
            dolores_option.pageInfo = pageInfo;
            initPageInfo();
            reloadPageData();
            //获取资源
            const resourceList = pageInfo.list;
            //展示数据加载层
            showLoading();
            //数据装配
            matchData(resourceList);
        }
    })
}

//匹配表格数据
function matchData(resourceList) {
    //获取列数据
    let columnList = dolores_option.columnList;
    //父级
    let parentList = [];
    //资源数据遍历
    resourceList.forEach(item => {
        //子级
        let childList = [];
        //遍历子级对象
        $.each(item, function (key, value) {
            //查找目标信息
            const match = columnList.find(item => item.name === key);
            if (match != null) {
                //如果存在则子级创建对象并注入
                let obj = {};
                if (match.idColumn != null) {
                    obj.idColumn = match.idColumn;
                }
                if (match.hidden != null) {
                    obj.hidden = match.hidden;
                }
                obj.name = key;
                obj.value = value;
                obj.dataType = match.dataType;
                childList.push(obj);
            }
        });
        //注入子级
        parentList.push(childList);
    });
    //重新赋值
    dolores_option.parentList = parentList;
    const isNeedOperate = dolores_option.isNeedOperate;
    //判断是否需要操作头
    if (isNeedOperate) {
        appendOperate();
    }
}

function appendOperate() {
    dolores_option.columnList.push({comment: '操作', name: 'operate'});
}

//初始化表格
function initTable() {
    $("#dolores-tbody").empty();
    $('#dolores-nav').empty();
}

//初始化表格头部
function initThead() {
    let columnList = dolores_option.columnList;
    //创建表格头部
    let thead = document.getElementById('dolores-thead');
    //创建行
    const tr = document.createElement('tr');
    //判断是否需要首列
    if (dolores_option.isNeedCheckbox) {
        let checkboxTd = document.createElement('td');
        checkboxTd.innerText = '#';
        checkboxTd.classList.add('first-column');
        tr.appendChild(checkboxTd);
    }
    columnList.forEach(header => {
        //创建列
        let td = document.createElement('td');
        //是否隐藏列
        const hidden = header.hidden;
        if (hidden) {
            td.style.display = 'none';
        }
        //设置文本
        td.innerText = header.comment;
        //行追加
        tr.appendChild(td);
    });
    //头部追加
    thead.appendChild(tr);
    //表格追加
    document
        .getElementById(dolores_option.tableId)
        .appendChild(thead);
}

//初始化主体
function initTbody() {
    let parentList = dolores_option.parentList;
    let tbody = document.getElementById('dolores-tbody');
    parentList.forEach((child, index) => {
        const tr = document.createElement('tr');
        const childList = child;
        if (childList != null && childList.length > 0) {
            //判断是否需要复选框
            if (dolores_option.isNeedCheckbox) {
                let checkboxTd = document.createElement('td');
                checkboxTd.classList.add('first-column');
                let checkboxContainer = document.createElement('div');
                checkboxContainer.classList.add('checkbox-container');
                let label = document.createElement('label');
                label.classList.add('custom-control', 'custom-checkbox');
                let input = document.createElement('input');
                input.setAttribute('type', 'checkbox');
                input.classList.add('custom-control-input', 'checkbox-item');
                let span = document.createElement('span');
                span.classList.add('custom-control-label');
                label.appendChild(input);
                label.appendChild(span);
                checkboxContainer.appendChild(label)
                checkboxTd.appendChild(checkboxContainer);
                tr.appendChild(checkboxTd);
            }

            childList.forEach((cell, index) => {
                let td = document.createElement('td');
                const idCol = cell.idColumn;
                const hidden = cell.hidden;
                const dataType = cell.dataType;
                if (idCol) {
                    td.setAttribute('id', 'id-column-' + index);
                }
                if (hidden) {
                    td.style.display = 'none';
                }
                const cellValue = cell.value
                if (dataType === 'date' && cellValue != null) {
                    td.innerText = parseDate(cellValue);
                } else {
                    td.innerText = cellValue;
                }
                tr.appendChild(td);
            });

            //判断是否需要操作按钮
            if (dolores_option.isNeedOperate) {
                let operateTd = document.createElement('td');
                let modifyBtn = document.createElement('button');
                let removeBtn = document.createElement('button');
                modifyBtn.innerText = '编辑';
                removeBtn.innerText = '删除';
                modifyBtn.setAttribute('id', 'modify');
                modifyBtn.classList.add('btn', 'btn-success', 'btn-sm');
                modifyBtn.classList.add('modal-effect');
                modifyBtn.setAttribute('id', 'single-modifyBtn-' + index);
                modifyBtn.setAttribute('data-bs-effect', 'effect-flip-vertical');
                modifyBtn.setAttribute('href', '#dolores-edit-modal');
                modifyBtn.setAttribute('onclick', "singleOpenEditModal(this)");
                modifyBtn.style.marginRight = '10px';
                removeBtn.setAttribute('id', 'single-removeBtn-');
                removeBtn.setAttribute('onclick', 'singleRemove(this)');
                removeBtn.classList.add('btn', 'btn-danger', 'btn-sm');
                operateTd.append(modifyBtn);
                operateTd.append(removeBtn);
                tr.appendChild(operateTd);
            }
        }
        tbody.appendChild(tr);
    });
    dolores_option.tbody = tbody;
}

//追加主体
function appendTbody() {
    setTimeout(function () {
        const tbody = dolores_option.tbody;
        document
            .getElementById(dolores_option.tableId)
            .appendChild(tbody);
        $('#dolores-tbody').show();
    }, timeout)
}

function reloadPageData() {
    const pageInfo = dolores_option.pageInfo;
    let prePage = pageInfo.prePage;
    let nextPage = pageInfo.nextPage;
    if (prePage === 0) {
        prePage = 1;
    }
    if (nextPage === 0) {
        nextPage = pageInfo.pageNum;
    }
    dolores_option.pageDetail.prePage = prePage;
    dolores_option.pageDetail.nextPage = nextPage;
}

function initPage() {
    const pageInfo = dolores_option.pageInfo;
    const pages = pageInfo.pages;
    const hasPreviousPage = pageInfo.hasPreviousPage;
    const hasNextPage = pageInfo.hasNextPage;
    const pageDetail = dolores_option.pageDetail;
    //创建导航标签
    let nav = document.getElementById('dolores-nav');
    nav.setAttribute('aria-label', 'Page navigation');
    nav.classList.add('d-flex', 'justify-content-end');
    //创建ul
    let ul = document.createElement('pagination');
    ul.classList.add('pagination');
    //创建pre_page模块
    initPreModule(ul);
    //创建pages模块
    initPagesModule(ul, pages, hasPreviousPage, hasNextPage, pageDetail.pageSize);
    //创建next_page模块
    initNextModule(ul);
    nav.appendChild(ul);
    document
        .getElementById("dolores-table-area")
        .appendChild(nav);
}

//创建pre_page模块
function initPreModule(ul) {
    let pre_li = document.createElement('li');
    pre_li.setAttribute('id', 'next_page');
    pre_li.classList.add('page-item');
    let pre_a = document.createElement('a');
    pre_a.classList.add('page-link');
    pre_a.setAttribute('aria-label', 'Previous');
    pre_a.setAttribute('onclick', "loadData('pre')");
    let pre_fist_span = document.createElement('span');
    pre_fist_span.setAttribute('aria-hidden', 'true');
    pre_fist_span.innerHTML = '&laquo;';
    let pre_second_span = document.createElement('span');
    pre_second_span.classList.add('sr-only');
    pre_second_span.innerText = 'Previous';
    pre_a.appendChild(pre_fist_span);
    pre_a.appendChild(pre_second_span);
    pre_li.appendChild(pre_a);
    ul.appendChild(pre_li);
}

function initPagesModule(ul, pages, hasPreviousPage, hasNextPage, pageSize) {
    for (let pageNum = 1; pageNum <= pages; pageNum++) {
        let li = document.createElement('li');
        li.classList.add('page-item');
        let a = document.createElement('a');
        a.classList.add('page-link');
        a.setAttribute('onclick', "loadData('page'," + pageNum + ")");
        a.innerText = pageNum;
        li.appendChild(a);
        ul.appendChild(li);
    }
}

//创建next_page模块
function initNextModule(ul) {
    let next_li = document.createElement('li');
    next_li.classList.add('page-item');
    let next_a = document.createElement('a');
    next_a.classList.add('page-link');
    next_a.setAttribute('aria-label', 'Next');
    next_a.setAttribute('onclick', "loadData('next')");
    let next_fist_span = document.createElement('span');
    next_fist_span.setAttribute('aria-hidden', 'true');
    next_fist_span.innerHTML = '&raquo;';
    let next_second_span = document.createElement('span');
    next_second_span.classList.add('sr-only');
    next_second_span.innerText = 'Next';
    next_a.appendChild(next_fist_span);
    next_a.appendChild(next_second_span);
    next_li.appendChild(next_a);
    ul.appendChild(next_li);
}

function initPageInfo() {
    $('#pageInfo').empty();
    const pageInfo = dolores_option.pageInfo;
    let spaceDiv = document.createElement('div');
    spaceDiv.classList.add('col-sm-12', 'col-md-12');
    let infoDiv = document.createElement('div');
    infoDiv.classList.add('dataTables_info');
    infoDiv.setAttribute('id', 'responsive-datatable_info');
    infoDiv.setAttribute('role', 'status');
    infoDiv.setAttribute('aria-live', 'polite');
    infoDiv.innerText = '显示 ' + pageInfo.pageNum + ' 到 ' + pageInfo.pageSize + ' 条，共有 ' + pageInfo.total + ' 条记录';
    spaceDiv.appendChild(infoDiv);
    document
        .getElementById("pageInfo")
        .appendChild(spaceDiv);
}