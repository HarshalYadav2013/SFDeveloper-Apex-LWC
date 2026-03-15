import { LightningElement } from 'lwc';

export default class FilterUtility extends LightningElement {

    searchText = '';
    category = 'ALL';
    sortyBy = 'Name_ASC';

    columns = [
        { label: 'Name', fieldName: 'name' },
        { label: 'Category', fieldName: 'category' },
        { label: 'Score', fieldName: 'score' }

    ];

    items = [
        { id: '1', name: 'Salesforce Developer', category: 'Learning', score: 95 },
        { id: '2', name: 'Salesforce AgentForce', category: 'Learning', score: 85 },
        { id: '3', name: 'Commnication', category: 'Lifestyle', score: 87 },
        { id: '4', name: 'WorkOut', category: 'Lifestyle', score: 71 },
        { id: '5', name: 'AI', category: 'Skill', score: 65 }
    ];

    get categoryOptions(){
        return[
            { label: 'All', value: 'ALL' },
            { label: 'Learning', value: 'Learning'},
            { label: 'Lifestyle', value: 'Lifestyle' },
            { label: 'Skill', value: 'Skill' }
        ];
    }

    get sortOptions(){
        return[
            { label: 'Name [A-Z]', value: 'Name_ASC'},
            { label: 'Name [Z-A]', value: 'Name_DSC' }
        ];
    }

    handleSearch(event){
        this.searchText = event.target.value;
    }

    handleCategory(event){
        this.category = event.detail.value;
    }

    handleSort(event){
        this.sortyBy = event.detail.value;
    }

    get filterData(){
        const textToSearch = (this.searchText || '').toLowerCase();
        let result = this.items.filter(item => {
            const textMatch = item.name.toLowerCase().includes(textToSearch);
            const categoryMatch = this.category === 'ALL' || item.category == this.category;

            return textMatch && categoryMatch;
        });

        result = [...result].sort((a,b) => {
            switch(this.sortyBy){
                case 'Name_ASC':
                    return a.name.localeCompare(b.name);
                case 'Name_DSC':
                    return b.name.localeCompare(a.name);
            }
        });

        return result;
    }
}