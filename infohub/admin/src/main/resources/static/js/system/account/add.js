$(function () {
    console.log('add作用域')
    reset();
    getRoleList();
})

function getRoleList() {
    get('/sysRole/queryList', null, function (resp) {
        if (resp.code === 200) {
            const roleList = resp.data;
            let append = '';
            roleList.forEach(item => {
                append += "<option value=" + item.roleId + ">" + item.roleName + "</option>";
            });
            $('[name=roleId]').append(append);
        }
    });
}

function validate() {
    let validate =
        {
            id: '#addForm',
            verify: [
                {
                    name: 'userName'
                },
                {
                    name: 'password',
                    minlength: 8,
                },
                {
                    name: 'roleId'
                }
            ]
        }
    return validateForm(validate);
}

function save() {
    if (validate()) {
        const form = document.querySelector('#addForm');
        let addObj = buildQueryObj(new FormData(form));
        addObj.isEnable = addObj.isEnable !== 'on' ? 0 : 1;
        post('/sysUser/save', addObj, function (resp) {
            if (resp.code === 200) {
                success('提示', '添加成功');
                reset();
                $('#dolores-add-modal #closeBtn').trigger('click');
            } else {
                error('提示', '添加失败');
            }
        });
    } else {
        warning('提示', '请完成信息填写');
    }
}

function reset() {
    console.log('add reset()')
    $('#addForm input').val('');
    $('#addForm select').val('');
}