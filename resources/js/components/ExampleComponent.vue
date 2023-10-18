<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Example Component</div>

                    <div class="card-body">
                        <div class="pl-lg-4">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label
                                            for="role"
                                            class="form-control-label"
                                            >Select Garden Type</label
                                        >
                                        <select
                                            id="role"
                                            name="role"
                                            class="form-control"
                                        >
                                            <option
                                                selected="selected"
                                                value=""
                                            >
                                                Select garden type...
                                            </option>
                                            <option value="1">
                                                Test Garden Type
                                            </option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label
                                            for="name"
                                            class="form-control-label"
                                            >Location</label
                                        >
                                        <input
                                            name="location"
                                            type="text"
                                            class="form-control"
                                        />
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
export default {
    data () {
        return {
            items: [
                {
                    name: '',
                    quantity: 0,
                    amount: 0,
                    total: 0
                }
            ]
        }
    },
    watch: {
        items: {
            handler (newValue, oldValue) {
                newValue.forEach(item => {
                    item.total = item.quantity * item.amount
                })
            },
            deep: true
        }
    },
    methods: {
        AddItem () {
            this.items.push({
                name: '',
                quantity: 0,
                amount: 0,
                total: 0
            })
        },
        removeItem () {
            this.items.splice(this.items, 1)
        }
    },
    mounted () {
        console.log('Component mounted.')
    }
}
</script>
