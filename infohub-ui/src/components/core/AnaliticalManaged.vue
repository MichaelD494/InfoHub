<template>
     <div class="card">
        <div class="header">
            <h2>Data Managed</h2>
            <card-actions></card-actions>
        </div>
        <div class="body">
            <div class="row">
                <div class="col-md-6">
                    <h2>1,523</h2>
                    <p>External Records</p>                                    
                </div>
                <div class="col-md-6">
                    <chart :options="options" class="dataManagedBar"  autoresize></chart>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-hover m-b-0">
                    <tbody>
                        <tr>
                            <th><i class="fa fa-circle text-success"></i></th>
                            <td>Twitter</td>
                            <td><span>862 Records</span></td>
                            <td>35% <i class="fa fa-caret-up "></i></td>
                        </tr>
                        <tr>
                            <th><i class="fa fa-circle text-info"></i></th>
                            <td>Facebook</td>
                            <td><span>451 Records</span></td>
                            <td>15% <i class="fa fa-caret-up "></i></td>
                        </tr>
                        <tr>
                            <th><i class="fa fa-circle text-warning"></i></th>
                            <td>Mailchimp</td>
                            <td><span>502 Records</span></td>
                            <td>20% <i class="fa fa-caret-down"></i></td>
                        </tr>
                        <tr>
                            <th><i class="fa fa-circle text-danger"></i></th>
                            <td>Google</td>
                            <td><span>502 Records</span></td>
                            <td>20% <i class="fa fa-caret-up "></i></td>
                        </tr>
                        <tr>
                            <th><i class="fa fa-circle "></i></th>
                            <td>Other</td>
                            <td><span>237 Records</span></td>
                            <td>10% <i class="fa fa-caret-down"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
import CardActions from '@/components/core/CardActions.vue'
export default {
    name: 'AnaliticalManaged',
    components: {
        'card-actions': CardActions,
    },
    props: {
        options: Object,
    },
}
</script>
<style scoped>
.dataManagedBar{
    width: 100%;
    height: 80px;
}
</style>