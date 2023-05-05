<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
               <bread-crumb></bread-crumb>
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12" v-for="(alert,index) in alertDetails" :key="index">
                    <div class="card">
                        <div class="header">
                            <h2>{{alert.title}}</h2>
                        </div>
                        <div class="body">
                            <div v-for="alertContent in alert.alert_content" :key="alertContent.class" :class="`${ alertContent.class }`" role="alert">{{ alertContent.alert_title }}</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12"  v-for="alert in alertLinkDetails" :key="alert.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{alert.title}}</h2>
                        </div>
                        <div class="body">
                            <div :class="`${ alertContent.class }`" role="alert"  v-for="alertContent in alert.alert_content" :key="alertContent.class">
                                {{ alertContent.alert_title}} <a :href="`${ alertContent.href }`" class="alert-link">{{alertContent.alert_link}}</a>{{alertContent.link_content}}
                              </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12" v-for="alert in alertIconDetails" :key="alert.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{alert.title}}</h2>
                        </div>
                        <div class="body">
                            <div v-for="alertContent in alert.alert_content" :key="alertContent.class">
                                <div class="alert-dismissible" role="alert"  v-bind:class="`${ alertContent.class }`" v-if="!alertContent.show">
                                    <button @click="closeAlertMassage(alertContent)" type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <i :class="`${ alertContent.icon_class }`"></i> {{ alertContent.icon_title }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Labels</h2>                        
                        </div>
                        <div class="body">                        
                            <p>We restyled the default options for labels and we added the filled class, that can be used in any combination.</p>
                            <span class="badge badge-default">Default</span>
                            <span class="badge badge-primary">Primary</span>
                            <span class="badge badge-success">Success</span>
                            <span class="badge badge-info">Info</span>
                            <span class="badge badge-warning">Warning</span>
                            <span class="badge badge-danger">Danger</span>
                            <hr>
                            <pre class="prettyprint prettyprinted"><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-default"</span><span class="tag">&gt;</span><span class="pln">Default</span><span class="tag">&lt;/span&gt;</span><span class="pln">
</span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-primary"</span><span class="tag">&gt;</span><span class="pln">Primary</span><span class="tag">&lt;/span&gt;</span><span class="pln">
</span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-success"</span><span class="tag">&gt;</span><span class="pln">Success</span><span class="tag">&lt;/span&gt;</span><span class="pln">
</span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-info"</span><span class="tag">&gt;</span><span class="pln">Info</span><span class="tag">&lt;/span&gt;</span><span class="pln">
</span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-warning"</span><span class="tag">&gt;</span><span class="pln">Warning</span><span class="tag">&lt;/span&gt;</span><span class="pln">
</span><span class="tag">&lt;span</span><span class="pln"> </span><span class="atn">class</span><span class="pun">=</span><span class="atv">"badge badge-danger"</span><span class="tag">&gt;</span><span class="pln">Danger</span><span class="tag">&lt;/span&gt;</span></pre>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Modals</h2>
                        </div>
                        <div class="body">
                            <button type="button" class="btn btn-primary mr-1"  @click="openModal('large')" v-click-outside="openModalOutside">Large modal</button>
                            <button type="button" class="btn btn-primary mr-1" @click="openModal('small')"  v-click-outside="opensmallModalOutside">Small modal</button>
                            <button type="button" class="btn btn-primary mr-1" @click="openModal('button')"  v-click-outside="openButtonModalOutside">Modal with button</button>
                            <button type="button" class="btn btn-primary mr-1" @click="openModal('vertically')" v-click-outside="openVerticallyModalOutside" >Vertically centered</button>

                            <!-- larg modal -->
                            <div class="bd-example-modal-lg" v-if="showLargeModal">
                                <div class="modal-mask">
                                    <div class="modal-wrapper">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title h4" id="myLargeModalLabel">Large modal</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"  @click="showLargeModal = false">
                                                    <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Woohoo, you're reading this text in a modal!</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Small modal -->
                            <div class="bd-example-modal-sm" v-if="showSmallModal">
                                <div class="modal-mask">
                                    <div class="modal-wrapper">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title h4" id="mySmallModalLabel">Small modal</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="showSmallModal = false">
                                                    <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Woohoo, you're reading this text in a modal!</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal with btn -->
                            <div v-if="showButtonModal">
                                <div class="modal-mask">
                                    <div class="modal-wrapper">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Woohoo, you're reading this text in a modal!</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" @click="showButtonModal = false">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                 </div>
                            </div>
                            <!-- Vertically centered -->
                            <div v-if="showVerticallyModal">
                                <div class="modal-mask">
                                    <div class="modal-wrapper">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Cras mattis consectetur orbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" @click="showVerticallyModal = false">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
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

            <div class="row clearfix">
                <div class="col-lg-12" v-for="accordion in accordionDetails" :key="accordion.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ accordion.title }}</h2>
                        </div>
                        <div class="body">
                            <div class="accordion" id="accordion">
                                <div v-for="(accordions,index) in accordion.accordion_detail" :key="index">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button"  @click='setActive(index)'>
                                                {{ accordions.accordion_title}}
                                            </button>
                                        </h5>
                                    </div>                                
                                    <div class="collapse"  :class="{'show': activeIndex === index}">
                                        <div class="card-body">
                                            {{  accordions.accordion_content }}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <h6>Accordion Link</h6>
                                    <p>
                                        <a class="btn btn-primary mr-1"  href="javascript:void(0);"  @click="LinkToggle('link')">
                                            Link with href
                                        </a>
                                        <button class="btn btn-primary mr-1" type="button"  @click="LinkToggle('button')">
                                            Button with data-target
                                        </button>
                                    </p>
                                    <div class="collapse" id="collapseExample" :class="{'show': accordionLink }">
                                        <div class="card card-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                        </div>
                                    </div>
                                </div>
                
                                <div class="col-lg-6 col-md-12">
                                    <div>
                                        <h6>Multiple targets Accordion</h6>
                                        <p>
                                            <a class="btn btn-primary mr-1" href="javascript:void();" @click="multiaccordionButton = multiaccordionButton !== 'first' ? 'first' : null">Toggle first element</a>
                                            <button class="btn btn-primary mr-1" type="button" @click="multiaccordionButton = multiaccordionButton !== 'second' ? 'second' : null">Toggle second element</button>
                                            <button class="btn btn-primary mr-1" type="button" @click="multiaccordionButton = multiaccordionButton !== 'all' ? 'all' : null">Toggle both elements</button>
                                        </p>
                                        <div class="row">
                                            <div class="col">
                                                <div class="collapse multi-collapse" :class="{'show':multiaccordionButton === 'first' || multiaccordionButton === 'all'}">
                                                <div class="card card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                                </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="collapse multi-collapse" :class="{'show':multiaccordionButton === 'second' || multiaccordionButton === 'all'}">
                                                <div class="card card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
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

            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Pagination</h2>
                        </div>
                        <div class="body">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
                                </ul>
                            </nav>
                            <hr>
                            <h6>Working with icons</h6>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item">
                                    <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item">
                                    <a class="page-link" href="javascript:void(0);" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                    </li>
                                </ul>
                            </nav>
                            <hr>
                            <h6>Disabled and active states</h6>
                            <nav aria-label="...">
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                    <a class="page-link" href="javascript:void(0);" tabindex="-1">Previous</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
                                    <li class="page-item active">
                                    <a class="page-link" href="javascript:void(0);">2 <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item">
                                    <a class="page-link" href="javascript:void(0);">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Tooltips</h2>
                        </div>
                        <div class="body">
                            <div class="demo-button">
                                <button type="button" class="btn btn-default mr-1"  v-tooltip.right="'Tooltip on the right'">Tooltip on the right</button>                                
                                <button type="button" class="btn btn-default mr-1" v-tooltip.left="'Tooltip on the left'">Tooltip on the left</button>
                                <button type="button" class="btn btn-default mr-1" v-tooltip.top="'Tooltip on the top'">Tooltip on the top</button>
                                <button type="button" class="btn btn-default mr-1"  v-tooltip.bottom="'Tooltip on the bottom'">Tooltip on the bottom</button>
                            </div>
                        </div>
                    </div>
                </div>
    
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Popovers</h2>
                        </div>
                        <div class="body">
                            <div class="demo-button">
                                <div class="btn-group">
                                    <VDropdown placement='right'><button class="btn btn-sm btn-default tooltip-target mr-1" >Popover on Click</button>
                                        <template #popper>
                                            <h6>Popover on Click</h6><br>
                                            And here's some amazing content. It's very engaging. Right?
                                        </template>
                                    </VDropdown>
                                </div>
                               <div class="btn-group">
                                    <VMenu  placement='right'>
                                        <button type="button"  class="btn btn-sm btn-default mr-1">Popover on Hover</button>
                                        <template #popper>
                                            <p>And here's some amazing content. It's very engaging.</p>
                                        </template>
                                    </VMenu>
                               </div>
                                <div class="btn-group">
                                    <VMenu  placement='left'>
                                        <button type="button"  class="btn btn-sm btn-default mr-1">Popover on left</button>
                                        <template #popper>
                                            <p>Vivamus laoreet rutrum faucibus.</p>
                                        </template>
                                    </VMenu>
                                </div>
                                <div class="btn-group">
                                    <VMenu  placement='right'>
                                        <button type="button"  class="btn btn-sm btn-default mr-1">Popover on right</button>
                                        <template #popper>
                                            <p>Vivamus laoreet rutrum faucibus.</p>
                                        </template>
                                    </VMenu>
                                </div>
                                <div class="btn-group">
                                    <VMenu  placement='top'>
                                        <button type="button"  class="btn btn-sm btn-default mr-1">Popover on top</button>
                                        <template #popper>
                                            <p>Vivamus laoreet rutrum faucibus.</p>
                                        </template>
                                    </VMenu>
                                </div>
                                <div class="btn-group">
                                    <VMenu  placement='bottom'>
                                        <button type="button"  class="btn btn-sm btn-default mr-1">Popover on bottom</button>
                                        <template #popper>
                                            <p>Vivamus laoreet rutrum faucibus.</p>
                                        </template>
                                    </VMenu>       
                                </div>                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Position</h2>
                        </div>
                        <div class="body">
                            <h6>Common values</h6>
<figure class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"position-static"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"position-relative"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"position-absolute"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"position-fixed"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"position-sticky"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span></code></pre></figure>
                            <hr>
                            <h6>Sticky top</h6>
<figure class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"sticky-top"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span></code></pre></figure>
                            <div class="p-3 mb-2 bg-primary text-white sticky-top">.sticky-top</div>
                            <hr>
                            <h6>Fixed top</h6>
<figure class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"fixed-bottom"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span></code></pre></figure>
                            <hr>
                            <h6>Fixed bottom</h6>
<figure class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"fixed-bottom"</span><span class="nt">&gt;</span>...<span class="nt">&lt;/div&gt;</span></code></pre></figure>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Borders</h2>
                        </div>
                        <div class="body bd-example-border-utils">
                            <span class="border"></span>
                            <span class="border-top"></span>
                            <span class="border-right"></span>
                            <span class="border-bottom"></span>
                            <span class="border-left"></span>
                            <hr>
                            <h6>Subtractive</h6>
                            <span class="border-0"></span>
                            <span class="border-top-0"></span>
                            <span class="border-right-0"></span>
                            <span class="border-bottom-0"></span>
                            <span class="border-left-0"></span>
                            <hr>
                            <h6>Border color</h6>
                            <span class="border border-primary"></span>
                            <span class="border border-secondary"></span>
                            <span class="border border-success"></span>
                            <span class="border border-danger"></span>
                            <span class="border border-warning"></span>
                            <span class="border border-info"></span>
                            <span class="border border-light"></span>
                            <span class="border border-dark"></span>
                            <span class="border border-white"></span>
                            <hr>
                            <h6>Border-radius</h6>
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-top" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-right" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-bottom" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-left" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-circle" />
                            <img src="http://via.placeholder.com/100x100" alt="..." class="rounded-0" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Shadows</h2>
                        </div>
                        <div class="body">
                            <div class="shadow-none p-3 mb-5 bg-light rounded">No shadow</div>
                            <div class="shadow-sm p-3 mb-5 bg-white rounded">Small shadow</div>
                            <div class="shadow p-3 mb-5 bg-white rounded">Regular shadow</div>
                            <div class="shadow-lg p-3 mb-5 bg-white rounded">Larger shadow</div>
<figure class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"shadow-none p-3 mb-5 bg-light rounded"</span><span class="nt">&gt;</span>No shadow<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"shadow-sm p-3 mb-5 bg-white rounded"</span><span class="nt">&gt;</span>Small shadow<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"shadow p-3 mb-5 bg-white rounded"</span><span class="nt">&gt;</span>Regular shadow<span class="nt">&lt;/div&gt;</span>
<span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">"shadow-lg p-3 mb-5 bg-white rounded"</span><span class="nt">&gt;</span>Larger shadow<span class="nt">&lt;/div&gt;</span></code></pre></figure>
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
    name:'BootstrapComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
            showLargeModal: false,
            showSmallModal: false,
            showButtonModal: false,
            showVerticallyModal: false,
            activeIndex: 0,
            accordionLink: false,
            multiaccordionButton: '',
            alertDetails:[
                {
                    title: 'Alert Messages',
                    alert_content: [
                        {
                            class:'alert alert-primary',
                            alert_title: 'A simple primary alert—check it out!'
                        },
                        {
                            class:'alert alert-secondary',
                            alert_title: 'A simple secondary alert—check it out!'
                        }, 
                        {
                            class:'alert alert-success',
                            alert_title: 'A simple success alert—check it out!'
                        },
                        {
                            class:'alert alert-danger',
                            alert_title: 'A simple danger alert—check it out!'
                        },
                        {
                            class:'alert alert-warning',
                            alert_title: 'A simple warning alert—check it out!'
                        },
                        {
                            class:'alert alert-info',
                            alert_title: 'A simple info alert—check it out!'
                        },
                        {
                            class:'alert alert-light',
                            alert_title: 'A simple light alert—check it out!'
                        },
                        {
                            class:'alert alert-dark',
                            alert_title: 'A simple dark alert—check it out!'
                        },
                    ],
                },
                
            ],
            alertLinkDetails:[
                {
                    title: 'Alert Messages with Link',
                    alert_content: [
                        {
                            class:'alert alert-primary',
                            alert_title: 'A simple primary alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-secondary',
                            alert_title: 'A simple secondary alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-success',
                            alert_title: 'A simple success alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-danger',
                            alert_title: 'A simple danger alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-warning',
                            alert_title: 'A simple warning alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-info',
                            alert_title: 'A simple info alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-light',
                            alert_title: 'A simple light alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                        {
                            class:'alert alert-dark',
                            alert_title: 'A simple dark alert with ',
                            href:"javascript:void(0);",
                            alert_link: 'an example link',
                            link_content: '. Give it a click if you like.'
                        },
                    ],
                },
                
            ],
            alertIconDetails:[
                {
                    title: 'Alert Messages With Icon',
                    alert_content: [
                        {
                            class:'alert alert-info',
                            icon_class:'fa fa-info-circle',
                            icon_title: 'The system is running well',
                             show: false,
                        },
                        {
                            class:'alert alert-success',
                             icon_class:'fa fa-check-circle',
                            icon_title: 'Your settings have been succesfully saved',
                             show: false,
                        }, 
                        {
                            class:'alert alert-warning',
                            icon_class:'fa fa-warning',
                            icon_title: 'Warning, check your permission settings',
                             show: false,
                        },
                        {
                            class:'alert alert-danger',
                             icon_class:'fa fa-times-circle',
                            icon_title: 'Your account has been suspended',
                             show: false,
                        },
                    ],
                },
                
            ],
            accordionDetails:[
                {
                    title: 'Accordion',
                    accordion_detail: [
                        {
                            accordion_title:'Collapsible Group Item #1',
                            accordion_content: 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably havent heard of them accusamus labore sustainable VHS.'
                        },
                        {
                            accordion_title:'Collapsible Group Item #2',
                            accordion_content: 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably havent heard of them accusamus labore sustainable VHS.'
                        }, 
                        {
                            accordion_title:'Collapsible Group Item #3',
                            accordion_content: 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably havent heard of them accusamus labore sustainable VHS.'
                        },
                    ],
                },
                
            ],
        }
    },methods: {
        closeAlertMassage(slider) {
            slider.show = true
        },
        openModal: function (title) {
            if (title === 'large') {
                this.showLargeModal = true
            }else if (title === 'small') {
                this.showSmallModal = true
            }else if (title === 'button') {
                this.showButtonModal = true
            }else if (title === 'vertically') {
                this.showVerticallyModal = true
            }
        },
        openModalOutside: function() {
           this.showLargeModal = false
        },
        opensmallModalOutside: function() {
           this.showSmallModal = false
        },
        openButtonModalOutside: function() {
           this.showButtonModal = false
        },
        openVerticallyModalOutside: function() {
           this.showVerticallyModal = false
        },
        setActive(index) {
            if (this.activeIndex === index) {
                this.activeIndex = null;
            } else {
                this.activeIndex = index;
            }
        },
        LinkToggle(title) {
            if (title === 'link') {
                this.accordionLink =!  this.accordionLink
            }else if (title === 'button') {
                this.accordionLink =!  this.accordionLink
            }
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
.highlight{
    background-color: #f8f9fa;
    padding: 20px;
}
.highlight pre code {
    font-size: inherit;
    color: #212529;
}
.nt {
    color: #2f6f9f;
}
.na {
    color: #4f9fcf;
}
.s {
    color: #d44950;
}
pre.prettyprint {
    background-color: #eee;
    border: 0px;
    margin: 0;        
    padding: 20px;
    text-align: left;
}

.atv,
.str {
    color: #05AE0E;
}

.tag,
.pln,
.kwd {
    color: #3472F7;
}

.atn {
    color: #2C93FF;
}

.pln {
    color: #333;
}

.com {
    color: #999;
}
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