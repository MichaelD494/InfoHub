<template>
    <div class="card">
        <div class="header">
            <h2>Leave a reply <small>Your email address will not be published. Required fields are marked*</small></h2>
        </div>
        <div class="body">
            <div class="comment-form">
                <form class="row clearfix">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Email Address">
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <textarea rows="4" class="form-control no-resize" placeholder="Please type what you want..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary">SUBMIT</button>
                    </div>                                
                </form>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'ReplyForm'
}
</script>
<style scoped>

</style>