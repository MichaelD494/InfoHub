//打开窗体
function openModal(id, modalId) {
    //动态添加的元素，那么在绑定事件时需要使用事件委托。
    // 也就是将事件绑定在父元素上，再利用事件冒泡的机制来触发事件
    $('body').on('click', id, function (e) {
        e.preventDefault();
        const effect = $(this).attr('data-bs-effect');
        $(modalId).addClass(effect);
    });
}
