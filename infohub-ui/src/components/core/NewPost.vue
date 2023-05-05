<template>
     <div class="card">
        <div class="header">
            <h2>New Post</h2>
        </div>
        <div class="body">
            <div class="new_post">
                <div class="form-group">
                    <textarea rows="4" class="form-control no-resize" placeholder="Please type what you want..."></textarea>
                </div>
                <div class="post-toolbar-b">
                    <button class="btn btn-warning mr-1"><i class="icon-paper-clip text-light"></i></button>
                    <button class="btn btn-warning mr-1"><i class="icon-camera text-light"></i></button>
                    <button class="btn btn-primary mr-1">Post</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'NewPost'
}
</script>
<style scoped>

</style>