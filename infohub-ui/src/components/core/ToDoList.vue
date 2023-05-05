<template>
    <div class="card">
        <div class="header">
            <h2>ToDo List <small>This Month task list</small></h2>
        </div>
        <div class="body todo_list">
            <ul class="list-unstyled mb-0">
                <li>
                    <label class="fancy-checkbox mb-0">
                        <input type="checkbox" name="checkbox" checked>
                        <span>Report Panel Usag</span>
                    </label>
                    <hr>
                </li>
                <li>
                    <label class="fancy-checkbox mb-0">
                        <input type="checkbox" name="checkbox">
                        <span>Report Panel Usag</span>
                    </label>
                    <hr>
                </li>
                <li>
                    <label class="fancy-checkbox mb-0">
                        <input type="checkbox" name="checkbox">
                        <span>New logo design for InfiniO</span>
                    </label>
                    <hr>
                </li>
                <li>
                    <label class="fancy-checkbox mb-0">
                        <input type="checkbox" name="checkbox">
                        <span>Design PSD files for InfiniO</span>
                    </label>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name: 'ToDoList',
}
</script>
<style scoped>
</style>