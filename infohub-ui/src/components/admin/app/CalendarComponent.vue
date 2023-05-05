<template>
     <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="body">
                            <div>
                                <full-calendar :events="events" :config="calendarConfig"></full-calendar>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="body">
                            <button type="button" class="btn btn-primary btn-block" @click="openModal" v-click-outside="openModalOutside">Add New Event</button>
                        </div>
                    </div>
                    <div class="card profile-header">
                        <div class="body">
                            <div class="text-center">
                                <img src="../../../assets/user.png" class="rounded-circle m-b-15" alt="">
                                <div>
                                    <h4 class="m-b-0"><strong>Alizee</strong> Thomas</h4>
                                    <span>Washington, d.c.</span>
                                </div>
                                <div class="progress progress-xs m-b-25 m-t-25">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 89%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-4">
                                        <h6>17</h6>
                                        <span>Completed</span>
                                    </div>
                                    <div class="col-4">
                                        <h6>34</h6>
                                        <span>ToDo</span>
                                    </div>
                                    <div class="col-4">
                                        <h6>78</h6>
                                        <span>All Tasks</span>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <span class="badge badge-default mb-2">Marketing</span>
                            <span class="badge badge-primary mb-2">Design Task</span>
                            <span class="badge badge-success mb-2">Development</span>
                            <span class="badge badge-info mb-2">Finance</span>
                            <span class="badge badge-warning mb-2">Meeting</span>
                            <span class="badge badge-danger mb-2">Conference</span>
                            <hr>
                            <h6>Team</h6>
                            <ul class="list-unstyled team-info m-t-20">                                
                                <li><img src="../../../assets/xs/avatar1.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar2.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar3.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar4.jpg" title="Avatar" alt="Avatar"></li>
                                <li><img src="../../../assets/xs/avatar5.jpg" title="Avatar" alt="Avatar"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="addevent" v-if="showModal">
            <div class="modal-mask">
                <div class="modal-wrapper">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="title" id="defaultModalLabel">Add Event</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="number" class="form-control" placeholder="Event Date">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" class="form-control" placeholder="Event Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                    <textarea class="form-control no-resize" placeholder="Event Description..."></textarea>
                                </div>
                            </div>       
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary">Add</button>
                            <button type="button" class="btn btn-secondary" @click="showModal = false">Close</button>
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
    name: 'CalendarComponent',
    components: {
       BreadCrumb,
    },data() {
        return {
            showModal: false,
            events: [
                {
                    title  : 'All Day Event',
                    start  : '2021-01-01',
                     color  : '#9A9A9A'
                },
                {
                    title  : 'Long Event',
                    start  : '2021-01-05',
                    color: '#ffc107'
                },
                {
                    title  : 'Happy Hour',
                    start  : '2021-01-09T12:30:00',
                    allDay : false,
                },
            ],
            calendarConfig: {
                defaultView: 'month',
                contentHeight: 570
            }
        }
    },methods: {
        openModal: function () {
            this.showModal = true
        },
        openModalOutside: function() {
           this.showModal = false
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