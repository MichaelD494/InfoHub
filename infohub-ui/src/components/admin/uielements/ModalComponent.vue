<template>
     <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>

            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Modal Default Size</h2>
                        </div>
                        <div class="body">
                            <a href="javascript:void(0);" @click="openModal('default')" v-click-outside="defaultModalOutside">
                                <img class="img-thumbnail img-fluid" src="../../../assets/model1.jpg" alt="User">
                            </a>                        
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Modal Large Size</h2>
                        </div>
                        <div class="body">
                            <a href="javascript:void(0);" @click="openModal('large')" v-click-outside="largeModalOutside">
                                <img class="img-thumbnail img-fluid" src="../../../assets/model2.jpg" alt="User">
                            </a>                        
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Modal Small Size</h2>
                        </div>
                        <div class="body">
                            <a href="javascript:void(0);" @click="openModal('small')" v-click-outside="smallModalOutside">
                                <img class="img-thumbnail img-fluid" src="../../../assets/model3.jpg" alt="User">
                            </a>                        
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Dialogs ========= --> 
            <!-- Default Size -->
            <div id="defaultModal"  v-if="defaultModal">
                <div class="modal-mask">
                    <div class="modal-wrapper">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="title" id="defaultModalLabel">Modal title</h4>
                                </div>
                                <div class="modal-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales orci ante, sed ornare eros vestibulum ut. Ut accumsan
                                    vitae eros sit amet  Integer dapibus, mi ac tempor varius, purus
                                    nibh mattis erat, vitae porta nunc nisi non tellus. Vivamus mollis ante non massa egestas fringilla.
                                    Vestibulum egestas consectetur nunc at ultricies. Morbi quis consectetur nunc. </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">SAVE CHANGES</button>
                                    <button type="button" class="btn btn-danger" @click="defaultModal = false">CLOSE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Large Size -->
            <div id="largeModal"  v-if="largeModal">
                <div class="modal-mask">
                    <div class="modal-wrapper">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="title" id="largeModalLabel">Modal title</h4>
                                </div>
                                <div class="modal-body"> dignissim nibh faucibus ullamcorper.
                                    Fusce pulvinar libero vel ligula iaculis ullamcorper. Integer dapibus, mi ac tempor varius, purus
                                    nibh mattis erat, vitae porta nunc nisi non tellus. Vivamus mollis ante non massa egestas fringilla.
                                    Vestibulum egestas consectetur nunc at ultricies. Morbi quis consectetur nunc. </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">SAVE CHANGES</button>
                                    <button type="button" class="btn btn-danger"  @click="largeModal = false">CLOSE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Small Size -->
            <div id="smallModal"  v-if="smallModal">
                <div class="modal-mask">
                    <div class="modal-wrapper">
                        <div class="modal-dialog modal-sm" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="title" id="smallModalLabel">Modal title</h4>
                                </div>
                                <div class="modal-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales orci ante, sed ornare eros vestibulum ut. Ut accumsan
                                    vitae eros sit amet tristique. Nullam scelerisque nunc enim, non dignissim nibh faucibus ullamcorper.
                                    Fusce pulvinar libero vel ligula iaculis ullamcorper. </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">SAVE CHANGES</button>
                                    <button type="button" class="btn btn-danger"  @click="smallModal = false">CLOSE</button>
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
    name:'ModalComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
            defaultModal: false,
            largeModal: false,
            smallModal: false,
        }
    },methods: {
        openModal: function (title) {
            if (title === 'default') {
                this.defaultModal = true
            }else if (title === 'large') {
                this.largeModal = true
            }else if (title === 'small') {
                this.smallModal = true
            }
        },
        defaultModalOutside: function() {
           this.defaultModal = false
        },
        largeModalOutside: function() {
           this.largeModal = false
        },
        smallModalOutside: function() {
           this.smallModal = false
        },
    },directives: {
        'click-outside': {
            bind: function(el, binding) {
                // Define Handler and cache it on the element
                const bubble = binding.modifiers.bubble
                const handler = (e) => {
                if (bubble || (!el.contains(e.target) && el !== e.target)) {
                    binding.value(e)
                }
                }
                el.__vueClickOutside__ = handler

                // add Event Listeners
                document.addEventListener('click', handler)
            },
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