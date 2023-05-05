<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
               <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="card">
                    <div class="body">
                        <h6 class="p-10 bg-info text-light">General</h6>
                        <div class="accordion custom" id="accordion">
                            <div>
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'first' ? 'first' : null">
                                        How may times Lorum Ipsum has been used in this theme?
                                        </button>
                                    </h5>
                                </div>                                
                                <div id="collapseOne" class="collapse" :class="{'show':multiaccordionButton === 'first'}">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'second' ? 'second' : null">
                                        How many instances of Lorum Ipsum usage can be found on the web?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" :class="{'show':multiaccordionButton === 'second'}">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'third' ? 'third' : null">
                                        How much does it cost to use Lorem ipsum?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" :class="{'show':multiaccordionButton === 'third'}">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="m-t-50"></div>

                        <h6 class="p-10 bg-warning text-light">Security and Privacy</h6>
                        <div class="accordion custom" id="accordion1">
                            <div>
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'four' ? 'four' : null">
                                        How much does it cost to use Lorem ipsum?
                                        </button>
                                    </h5>
                                </div>                                
                                <div id="collapseOne1" class="collapse" :class="{'show':multiaccordionButton === 'four'}">
                                    <div class="card-body">
                                       non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'five' ? 'five' : null">
                                        Lorem ipsum commodo adipisicing sunt ad aliqua velit nulla?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo2" class="collapse" :class="{'show':multiaccordionButton === 'five'}">
                                    <div class="card-body">
                                       enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" @click="multiaccordionButton = multiaccordionButton !== 'six' ? 'six' : null">
                                        How much does it cost to use Lorem ipsum?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree3" class="collapse" :class="{'show':multiaccordionButton === 'six'}">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
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
    name:'FaqComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
            multiaccordionButton: 'first',
        }
    },methods: {
       
    }
}
</script>
<style scoped>

</style>