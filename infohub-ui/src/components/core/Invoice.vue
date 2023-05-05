<template>
    <div class="card">
        <div class="header">
            <h2>Invoice</h2>
        </div>
        <div class="body">
            <div class="row">
                <div class="col-md-12">
                    <address>
                        <strong>ThemeMakker Inc.</strong> <small class="float-right">16/05/2018</small><br>
                        795 Folsom Ave, Suite 546<br>
                        San Francisco, CA 54656<br>
                        <abbr title="Phone">P:</abbr> (123) 456-34636
                    </address>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Item</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr><td></td>
                        <td></td>
                        <td><strong>$55</strong></td>
                    </tr></tfoot>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Simple Black Clock</td>
                            <td>$30</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Brone Candle</td>
                            <td>$25</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-md-12 align-right">
                    <button class="btn btn-warning mr-1"><i class="icon-printer"></i></button>
                    <button class="btn btn-primary">Pay Now</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'Invoice',
}
</script>
<style scoped>
</style>