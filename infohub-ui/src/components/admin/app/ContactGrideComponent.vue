<template>
     <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12" v-for="(detailgrid,index) in appcontactgridtDetail" :key="index" >
                    <div class="card">
                        <div class="body text-center">
                            <div class="chart easy-pie-chart-1" data-percent="75"> <span><img :src="`${detailgrid.img_src}`" alt="user" class="rounded-circle"/></span> </div>
                            <h6>{{ detailgrid.user_name }}</h6>
                            <ul class="social-links list-unstyled">
                                <li><a title="facebook" href="javascript:void(0);"><i class="zmdi zmdi-facebook"></i></a></li>
                                <li><a title="twitter" href="javascript:void(0);"><i class="zmdi zmdi-twitter"></i></a></li>
                                <li><a title="instagram" href="javascript:void(0);"><i class="zmdi zmdi-instagram"></i></a></li>
                            </ul>
                            <small>{{ detailgrid.address }}</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="body text-center">
                            <div class="p-t-65 p-b-65">
                                <h6>Add New Contact</h6>                                
                                <button type="button" class="btn btn-outline-primary" @click="openModal"><i class="fa fa-plus-circle"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Default Size -->
            <div id="addevent" v-if="showModal">
                <div class="modal-mask">
                    <div class="modal-wrapper">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h6 class="title" id="defaultModalLabel">Add Contact</h6>
                                </div>
                                <div class="modal-body">
                                    <div class="row clearfix">
                                        <div class="col-6">
                                            <div class="form-group">                                    
                                                <input type="text" class="form-control" placeholder="First Name">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">                                   
                                                <input type="text" class="form-control" placeholder="Last Name">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">                                    
                                                <input type="number" class="form-control" placeholder="Phone Number">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">                                    
                                                <input type="text" class="form-control" placeholder="Enter Address">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">                                            
                                                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                                                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">                                    
                                                <input type="text" class="form-control" placeholder="Facebook">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">                                   
                                                <input type="text" class="form-control" placeholder="Twitter">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">                                    
                                                <input type="text" class="form-control" placeholder="Linkedin">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">                                    
                                                <input type="text" class="form-control" placeholder="instagram">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">Add</button>
                                    <button type="button" class="btn btn-secondary" @click="showModal = false">CLOSE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
export default {
    name:'ContactGrideComponent',
    components: {
       BreadCrumb,
    },data (){
        return{
            showModal: false,
            appcontactgridtDetail:
            [
                {
                    img_src: require(`../../../assets/sm/avatar1.jpg`),
                    user_name: 'John Smith',
                    address:"795 Folsom Ave, Suite 600 San Francisco, CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar2.jpg`),
                    user_name:"Hossein Shams",
                    address:"795 Folsom Ave, Suite 600 San Francisco, CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar3.jpg`),
                    user_name:"Maryam Amiri",
                    address:"795 Folsom Ave, Suite 600 San Francisco,CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar4.jpg`),
                    user_name:"Tim Hank",
                    address:"795 Folsom Ave, Suite 600 San Francisco,CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar5.jpg`),
                    user_name:"Frank Camly",
                    address:"795 Folsom Ave, Suite 600 San Francisco,CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar2.jpg`),
                    user_name:"Gary Camara",
                    address:"795 Folsom Ave, Suite 600 San Francisco,CADGE 94107",
                },
                {
                    img_src: require(`../../../assets/sm/avatar1.jpg`),
                    user_name:"Gary Camara",
                    address:"795 Folsom Ave, Suite 600 San Francisco,CADGE 94107",
                },
            ],
        }
    },methods: {
        openModal: function () {
            this.showModal = true
        }
    }   
}
</script>
<style scoped>
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, .5);
  display: table;
  transition: opacity .3s ease;
}

.modal-wrapper {
  display: table-cell;
  vertical-align: top;
}
</style>