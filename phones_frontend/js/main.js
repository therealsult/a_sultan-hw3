const phoneStore = Vue.createApp({
    created() {

        this.fetchPhonesData();
    },
    data() {
        return {
            phonesData: [],
            filteredphonesData: [],
            selectedphone: null,
            error: '',
            searchQuery: '',
            isLoading: false
        };
    },
    methods: {
        fetchPhonesData() {
            this.isLoading = true;
            this.error = '';
            fetch('http://localhost/phones_api/public/phone')
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`Failed to load: ${response.statusText} (${response.status})`);
                    }
                    return response.json();
                })
                .then(data => {
                    this.phoneData = data;
                    this.filteredphoneData = data;
                })
                .catch(error => {
                    console.error('Sorry, an error has occured while fetching your results:', error);
                    this.error = `An error occurred: ${error.message}. Please try again.`;
                })
                .finally(() => this.isLoading = false);
        },
        getPhoneDetails(phoneId) {
            fetch(`http://localhost/phones_api/public/phone/${phoneId}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }
                    return response.json();
                })
                .then(data => {
                    this.selectedphone = data;

                    this.$nextTick(() => {

                        const detailsContainer = document.querySelector('#phone-infoCon');
                        if (detailsContainer) {
                            detailsContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
                        }
                    });
                })
                .catch(error => {
                    console.error('Error fetching phone details:', error);
                    this.error = 'An error occurred while fetching the phone details. Please try again later.';
                });
        }
    },
    watch: {
        searchQuery(newQuery) {
            if (newQuery) {
                this.filteredPhoneData = this.phoneData.filter(phone => {
                    return phone.make.toLowerCase().includes(newQuery.toLowerCase()) ||
                        phone.model.toLowerCase().includes(newQuery.toLowerCase());
                });
            } else {
                this.filteredPhoneData = this.phoneData;
            }
        }
    }
});

phoneStore.mount('#app');
