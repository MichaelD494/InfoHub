//提示等级
var level = {
    warning: 0,
    error: 1
}

//初始化校验解析器
function initValidateResolver(verifyArr) {
    let validateResolver = {
        total: 0,
        success: 0,
        fail: 0,
        recorder: []
    }
    validateResolver.total = verifyArr.length;
    return validateResolver;
}

//校验表单
function validateForm(validate) {
    //获取表单id
    const formId = validate.id;
    //判断表单非空
    if (!isNotEmpty(formId)) {
        console.warn('校验表单id不能为空')
        return;
    }
    //获取校验集合
    const verifyArr = validate.verify;
    //初始化校验解析器
    let validateResolver = initValidateResolver(verifyArr);
    //构建校验解析器
    buildValidateResolver(formId, verifyArr, validateResolver);
    //执行校验解析器
    return executeValidateResolver(formId, validateResolver);
}

//构造校验解析器
function buildValidateResolver(formId, verifyArr, validateResolver) {
    //遍历校验集合
    verifyArr.forEach(verify => {
        //标签name
        const name = verify.name;
        //最小长度
        const minlength = verify.minlength;
        //最大长度
        const maxlength = verify.maxlength;
        //获取校验标签对象
        let verifyObj = $(formId + " [name=" + name + "]");
        //获取标签父级
        let parent = verifyObj.parent();
        //获取值
        const val = verifyObj.val();
        //获取值数据类型
        let dataType = typeof val;
        //定义非空标识
        let notNullFlag = false;
        //根据数据类型进入对应的逻辑区域
        switch (dataType) {
            case "string":
                if (!isNotEmpty(val)) {
                    recordNotNull(parent, validateResolver);
                }
                break;
            case "object":
                const length = val.length;
                if (length === 0) {
                    recordNotNull(parent, validateResolver);
                }
                break;
        }
        if (notNullFlag) {
            if (minlength != null && minlength > 0) {
                if (minlength => val.length) {
                    validateResolver.success++;
                } else {
                    recordMinlength(minlength, parent, validateResolver);
                }
            }
            if (maxlength != null && maxlength > 0) {
                const val = verifyObj.val();
                if (maxlength <= val.length) {
                    validateResolver.success++;
                } else {
                    recordMaxlength(maxlength, parent, validateResolver);
                }
            }
        }
    });
}

//执行校验解析器
function executeValidateResolver(formId, validateResolver) {
    const success = validateResolver.success;
    const fail = validateResolver.fail;
    if (success === fail) {
        return true;
    } else {
        $('.invalid-feedback').remove();
        const recorder = validateResolver.recorder;
        recorder.forEach(record => {
            const name = record.name;
            let parent = record.parent;
            const msg = record.msg;
            const level = record.level;
            const noticeHtml = "<div class='invalid-feedback' style='display:block'>" + msg + "</div>";
            parent.append(noticeHtml);
        });
        return false;
    }
}

//记录不为空数据
function recordNotNull(parent, validateResolver) {
    const recorder = {
        name: name,
        parent: parent,
        type: 'notNull',
        msg: '填写信息不能为空',
        level: level.warning
    };
    validateResolver.recorder.push(recorder);
    validateResolver.fail++;
}

//记录最小长度
function recordMinlength(minlength, parent, validateResolver) {
    const recorder = {
        name: name,
        parent: parent,
        type: 'minlength',
        msg: '填写信息不能少于' + minlength + '位',
        level: level.warning
    };
    validateResolver.recorder.push(recorder);
    validateResolver.fail++;
}

//记录最大长度
function recordMaxlength(maxlength, parent, validateResolver) {
    const recorder = {
        name: name,
        parent: parent,
        type: 'maxlength',
        msg: '填写信息不能多于' + maxlength + '位',
        level: level.warning
    };
    validateResolver.recorder.push(recorder);
    validateResolver.fail++;
}