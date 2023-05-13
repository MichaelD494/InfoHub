//初始化
function init(option) {
    rebuildOption(option, dolores_option);
    //加载表格数据
    loadTable(dolores_option);
    //初始化表格
    initTable(dolores_option);
    //初始化表格头部
    initThead(dolores_option);
    //初始化表格主体
    initTbody(dolores_option);
    //隐藏数据加载层
    hideLoading();
    //追加
    appendTbody(dolores_option);
}

//重构表格选项对象
function rebuildOption(option) {
    rewriteObj(option, dolores_option);
}

//加载表单
function loadTable(option) {
    //获取数据地址
    const url = option.url;
    //获取查询参数
    const queryParam = option.queryParam;
    $.ajax({
        url: url,
        type: 'POST',
        async: false,
        data: queryParam == null ? null : JSON.stringify(queryParam),
        dataType: 'JSON',
        contentType: 'application/json; charset=utf-8',
        success: function (resp) {
            //获取资源
            const resourceList = resp.data;
            //展示数据加载层
            showLoading();
            //数据装配
            matchData(option, resourceList);
        }
    })
}

//匹配表格数据
function matchData(option, resourceList) {
    //获取列数据
    let columnList = option.columnList;
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
                childList.push(obj);
            }
        });
        //注入子级
        parentList.push(childList);
    });
    //重新赋值
    option.parentList = parentList;
    const isNeedOperate = option.isNeedOperate;
    //判断是否需要操作头
    if (isNeedOperate) {
        appendOperate(option);
    }
}

function appendOperate(option) {
    option.columnList.push({comment: '操作', name: 'operate'});
}

//初始化表格
function initTable() {
    const table = $("#dolores-table");
    table.html('');
}

//初始化表格头部
function initThead(option) {
    let columnList = option.columnList;
    //创建表格头部
    let thead = document.createElement('thead');
    //设置元素属性
    thead.setAttribute('id', 'dolores-thead');
    //创建行
    const tr = document.createElement('tr');
    //判断是否需要首列
    if (option.isNeedCheckbox) {
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
        .getElementById("dolores-table")
        .appendChild(thead);
}

//初始化主体
function initTbody(option) {
    let parentList = option.parentList;
    let tbody = document.createElement('tbody');
    tbody.setAttribute('id', 'dolores-tbody');
    parentList.forEach(child => {
        const tr = document.createElement('tr');
        const childList = child;
        if (childList != null && childList.length > 0) {
            //判断是否需要复选框
            if (option.isNeedCheckbox) {
                let checkboxTd = document.createElement('td');
                checkboxTd.classList.add('first-column');
                let label = document.createElement('label');
                label.classList.add('custom-control', 'custom-checkbox');
                let input = document.createElement('input');
                input.setAttribute('type', 'checkbox');
                input.classList.add('custom-control-input', 'checkbox-item');
                let span = document.createElement('span');
                span.classList.add('custom-control-label');
                label.appendChild(input);
                label.appendChild(span);
                checkboxTd.appendChild(label);
                tr.appendChild(checkboxTd);
            }

            childList.forEach(cell => {
                let td = document.createElement('td');
                const idCol = cell.idColumn;
                const hidden = cell.hidden;
                if (idCol) {
                    td.setAttribute('id', 'idColumn');
                }
                // console.log(hidden)
                if (hidden) {
                    td.style.display = 'none';
                }
                td.innerText = cell == null ? null : cell.value;
                tr.appendChild(td);
            });

            //判断是否需要操作按钮
            if (option.isNeedOperate) {
                let operateTd = document.createElement('td');
                let modifyBtn = document.createElement('button');
                let removeBtn = document.createElement('button');
                modifyBtn.innerText = '编辑';
                removeBtn.innerText = '删除';
                modifyBtn.setAttribute('id', 'modify');
                modifyBtn.classList.add('btn', 'btn-success', 'btn-sm');
                modifyBtn.classList.add('modal-effect');
                modifyBtn.setAttribute('id', 'single-modifyBtn')
                modifyBtn.setAttribute('data-bs-effect', 'effect-flip-vertical')
                modifyBtn.setAttribute('data-bs-toggle', 'modal')
                modifyBtn.setAttribute('href', '#dolores-edit-modal')
                modifyBtn.setAttribute('onclick', "openModal('#modify','#dolores-edit-modal')")
                modifyBtn.style.marginRight = '10px';
                removeBtn.setAttribute('id', 'single-removeBtn');
                removeBtn.setAttribute('onclick', 'remove()');
                removeBtn.classList.add('btn', 'btn-danger', 'btn-sm');
                operateTd.append(modifyBtn);
                operateTd.append(removeBtn);
                tr.appendChild(operateTd);
            }
        }
        tbody.appendChild(tr);
    });
    option.tbody = tbody;
}

//追加主体
function appendTbody(option) {
    setTimeout(function () {
        const tbody = option.tbody;
        document
            .getElementById("dolores-table")
            .appendChild(tbody);
    }, timeout)
}