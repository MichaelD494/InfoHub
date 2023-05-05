<template>
    <div class="card">
        <div class="header">
            <h2>Browser Stats</h2>
        </div>
        <div class="body">
            <table class="table m-b-0">
                <tbody>
                    <tr>
                        <td>Google Chrome</td>
                        <td class="align-right"><span class="badge badge-info">40%</span></td>
                    </tr>
                    <tr>
                        <td>Mozila Firefox</td>
                        <td class="align-right"><span class="badge badge-danger">30%</span></td>
                    </tr>
                    <tr>
                        <td>Safari</td>
                        <td class="align-right"><span class="badge badge-default">15%</span></td>
                    </tr>
                    <tr>
                        <td>Internet Explorer</td>
                        <td class="align-right"><span class="badge badge-warning">15%</span></td>
                    </tr>                              
                </tbody>
            </table>
        </div>
    </div>
</template>
<script>
export default {
    name: 'BrowserStat',
}
</script>
<style scoped>
</style>