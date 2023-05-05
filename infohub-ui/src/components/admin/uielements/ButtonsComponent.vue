<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>

            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Buttons</h2>
                        </div>
                        <div class="body">
                            <button type="button" class="btn btn-primary mr-1">Primary</button>
                            <button type="button" class="btn btn-secondary mr-1">Secondary</button>
                            <button type="button" class="btn btn-success mr-1">Success</button>
                            <button type="button" class="btn btn-danger mr-1">Danger</button>
                            <button type="button" class="btn btn-warning mr-1">Warning</button>
                            <button type="button" class="btn btn-info mr-1">Info</button>
                            <button type="button" class="btn btn-light mr-1">Light</button>
                            <button type="button" class="btn btn-dark mr-1">Dark</button>                            
                            <button type="button" class="btn btn-link mr-1">Link</button>
                        </div>
                        <div class="body">
                            <h6>Disabled State</h6>
                            <button type="button" class="btn btn-primary disabled mr-1">Primary</button>
                            <button type="button" class="btn btn-secondary disabled mr-1">Secondary</button>
                            <button type="button" class="btn btn-success disabled mr-1">Success</button>
                            <button type="button" class="btn btn-danger disabled mr-1">Danger</button>
                            <button type="button" class="btn btn-warning disabled mr-1">Warning</button>
                            <button type="button" class="btn btn-info disabled mr-1">Info</button>
                            <button type="button" class="btn btn-light disabled mr-1">Light</button>
                            <button type="button" class="btn btn-dark disabled mr-1">Dark</button>                            
                            <button type="button" class="btn btn-link disabled mr-1">Link</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Button tags</h2>
                        </div>
                        <div class="body">
                            <a class="btn btn-primary mr-1" href="javascript:void(0);" role="button">Link</a>
                            <button class="btn btn-primary mr-1" type="submit">Button</button>
                            <input class="btn btn-primary mr-1" type="button" value="Input">
                            <input class="btn btn-primary mr-1" type="submit" value="Submit">
                            <input class="btn btn-primary mr-1" type="reset" value="Reset">
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Outline buttons</h2>
                        </div>
                        <div class="body">
                            <button type="button" class="btn btn-outline-primary mr-1">Primary</button>
                            <button type="button" class="btn btn-outline-secondary mr-1">Secondary</button>
                            <button type="button" class="btn btn-outline-success mr-1">Success</button>
                            <button type="button" class="btn btn-outline-danger mr-1">Danger</button>
                            <button type="button" class="btn btn-outline-warning mr-1">Warning</button>
                            <button type="button" class="btn btn-outline-info mr-1">Info</button>
                            <button type="button" class="btn btn-outline-light mr-1">Light</button>
                            <button type="button" class="btn btn-outline-dark mr-1">Dark</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Button group</h2>
                        </div>
                        <div class="body">
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-secondary">Left</button>
                                <button type="button" class="btn btn-secondary">Middle</button>
                                <button type="button" class="btn btn-secondary">Right</button>
                            </div>
                            <hr>
                            <h6>Button toolbar</h6>
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group mr-2" role="group" aria-label="First group">
                                    <button type="button" class="btn btn-secondary">1</button>
                                    <button type="button" class="btn btn-secondary">2</button>
                                    <button type="button" class="btn btn-secondary">3</button>
                                    <button type="button" class="btn btn-secondary">4</button>
                                </div>
                                <div class="btn-group mr-2" role="group" aria-label="Second group">
                                    <button type="button" class="btn btn-secondary">5</button>
                                    <button type="button" class="btn btn-secondary">6</button>
                                    <button type="button" class="btn btn-secondary">7</button>
                                </div>
                                <div class="btn-group" role="group" aria-label="Third group">
                                    <button type="button" class="btn btn-secondary">8</button>
                                </div>
                            </div>
                            <hr>
                            <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group mr-2" role="group" aria-label="First group">
                                    <button type="button" class="btn btn-secondary">1</button>
                                    <button type="button" class="btn btn-secondary">2</button>
                                    <button type="button" class="btn btn-secondary">3</button>
                                    <button type="button" class="btn btn-secondary">4</button>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                    <div class="input-group-text" id="btnGroupAddon">@</div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Input group example" aria-label="Input group example" aria-describedby="btnGroupAddon">
                                </div>
                            </div>
                            <hr>
                            <h6>Sizing</h6>
                            <div class="btn-group btn-group-lg" role="group" aria-label="Large button group">
                                <button type="button" class="btn btn-secondary">Left</button>
                                <button type="button" class="btn btn-secondary">Middle</button>
                                <button type="button" class="btn btn-secondary">Right</button>
                            </div>
                            <br><br>
                            <div class="btn-group" role="group" aria-label="Default button group">
                                <button type="button" class="btn btn-secondary">Left</button>
                                <button type="button" class="btn btn-secondary">Middle</button>
                                <button type="button" class="btn btn-secondary">Right</button>
                            </div>
                            <br><br>
                            <div class="btn-group btn-group-sm" role="group" aria-label="Small button group">
                                <button type="button" class="btn btn-secondary">Left</button>
                                <button type="button" class="btn btn-secondary">Middle</button>
                                <button type="button" class="btn btn-secondary">Right</button>
                            </div>
                            <hr>
                            <h6>Nesting</h6>
                            <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                <button type="button" class="btn btn-secondary">1</button>
                                <button type="button" class="btn btn-secondary">2</button>
                                
                                <div class="btn-group" role="group" :class="{ 'show': isActiveDropdawn}"  @click="isActiveDropdawn = !isActiveDropdawn" v-click-outside="ActiveDropdawnOutside">
                                    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Dropdown
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" :class="{ 'show': isActiveDropdawn}">
                                    <a class="dropdown-item" href="javascript:void(0);">Dropdown link</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Dropdown link</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="body">
                            <p class="demo-button">
                                <button type="button" class="btn btn-default mr-1"><i class="fa fa-plus-square"></i> <span>Default</span></button>
                                <button type="button" class="btn btn-primary mr-1"><i class="fa fa-refresh"></i> <span>Primary</span></button>
                                <button type="button" class="btn btn-info mr-1"><i class="fa fa-info-circle"></i> <span>Info</span></button>
                                <button type="button" class="btn btn-primary mr-1" disabled="disabled"><i class="fa fa-refresh fa-spin"></i> <span>Refreshing...</span></button>
                            </p>
                            <br>
                            <p class="demo-button">
                                <button type="button" class="btn btn-success mr-1"><i class="fa fa-check-circle"></i> <span>Success</span></button>
                                <button type="button" class="btn btn-warning mr-1"><i class="fa fa-warning"></i> <span>Warning</span></button>
                                <button type="button" class="btn btn-danger mr-1"><i class="fa fa-trash-o"></i> <span>Danger</span></button>
                                <button type="button" class="btn btn-primary mr-1" disabled="disabled"><i class="fa fa-spinner fa-spin"></i> <span>Loading...</span></button>
                            </p>
                            <br>
                            <p class="demo-button">
                                <button type="button" class="btn btn-danger mr-1"><i class="fa fa-heart"></i> <span>Love</span></button>
                                <button type="button" class="btn btn-danger mr-1"><span>Love</span> <i class="fa fa-heart"></i></button>
                                <button type="button" class="btn btn-danger mr-1"><span class="sr-only">Love</span> <i class="fa fa-heart"></i></button>
                            </p>
                            <br>
                            <p class="demo-button">
                                <button type="button" class="btn btn-default mr-1" title="Refresh"><span class="sr-only">Refresh</span> <i class="fa fa-refresh"></i></button>
                                <button type="button" class="btn btn-default mr-1" title="Copy"><span class="sr-only">Copy</span> <i class="fa fa-files-o"></i></button>
                                <button type="button" class="btn btn-success mr-1" title="Save"><span class="sr-only">Save</span> <i class="fa fa-save"></i></button>
                                <button type="button" class="btn btn-danger mr-1" title="Delete"><span class="sr-only">Delete</span> <i class="fa fa-trash-o"></i></button>
                            </p>
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
    name:'ButtonsComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
            isActiveDropdawn: false,
        }
    },methods: {
        ActiveDropdawnOutside: function() {
           this.isActiveDropdawn = false
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

</style>