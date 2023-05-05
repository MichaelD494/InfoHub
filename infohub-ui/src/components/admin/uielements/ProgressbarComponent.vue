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
                            <h2>Default Progress Bars</h2>
                        </div>
                        <div class="body">
                            <div class="progress mb-3">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 87%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                            <div class="progress mb-3">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 46%">
                                    <span class="sr-only">60% Complete (warning)</span>
                                </div>
                            </div>
                            <div class="progress mb-3">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                    <span class="sr-only">60% Complete (success)</span>
                                </div>
                            </div>
                            <div class="progress mb-3">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 12%">
                                    <span class="sr-only">60% Complete (danger)</span>
                                </div>
                            </div>
                            <hr>
                            <h6>Sizes</h6>
                            <div class="progress progress-xs mb-3">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 89%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                            <div class="progress progress-sm mb-3">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 12%">
                                    <span class="sr-only">60% Complete (warning)</span>
                                </div>
                            </div>
                            <div class="progress mb-3">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                    <span class="sr-only">60% Complete (success)</span>
                                </div>
                            </div>
                            <div class="progress progress-lg mb-3">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 55%">
                                    <span class="sr-only">60% Complete (danger)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Progress Bars <small>Progress Bars based on Bootstrap-Progressbar plugin</small></h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <h6>Percentage Format</h6>
                                     <div class="progress mb-3">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
                                            25%
                                        </div>
                                    </div>
                                    <h6>Number Format</h6>
                                    <div class="progress progress mb-3">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="41" aria-valuemin="0" aria-valuemax="100" style="width: 41%;">
                                            41 / 100
                                        </div>
                                    </div>
                                    <h6>Custom Format</h6>
                                    <div class="progress progress mb-3">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;">
                                            77 of 100
                                        </div>
                                    </div>
                                    <hr>
                                    <h6>Other Styles</h6>
                                    <div class="progress mb-3">
                                        <div 
                                            class="progress-bar progress-bar-striped progress-bar-animated bg-warning"
                                            role="progressbar"
                                            style="width: 43%"
                                            aria-valuenow="50"
                                            aria-valuemin="50"
                                            aria-valuemax="100"
                                            >
                                            43%
                                        </div>
                                    </div>
                                    <div class="progress mb-3">
                                        <div 
                                            class="bg-danger progress-bar progress-bar-animated progress-bar-striped"
                                            role="progressbar"
                                            style="width: 67%"
                                            aria-valuenow="50"
                                            aria-valuemin="50"
                                            aria-valuemax="100"
                                            >
                                            67%
                                        </div>
                                    </div>
                                    <div class="progress mb-3">
                                        <div
                                            class="bg-success progress-bar progress-bar-animated progress-bar-striped"
                                            role="progressbar"
                                            style="width: 55%"
                                            aria-valuenow="50"
                                            aria-valuemin="50"
                                            aria-valuemax="100"
                                            >
                                        </div>
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
    name:'ProgressbarComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
           
        }
    }
}
</script>
<style>

</style>