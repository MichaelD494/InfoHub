<template>
    <div class="card">
        <div class="header">
            <h2>My Stats</h2>
        </div>
        <div class="body">
            <ul class=" list-unstyled basic-list">
                <li><i class="icon-book-open m-r-5"></i> Active Projects <span class="badge badge-primary">21</span></li>
                <li><i class="icon-list m-r-5"></i> Task Pending <span class="badge-purple badge">50</span></li>
                <li><i class="fa fa-ticket m-r-5"></i> Support Tickets<span class="badge-success badge">9</span></li>
                <li><i class="icon-tag m-r-5"></i> New Projects<span class="badge-info badge">7</span></li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name: 'StatsList',
}
</script>
<style scoped>
</style>