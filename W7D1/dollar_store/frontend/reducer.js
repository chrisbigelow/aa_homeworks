const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    default: 
      return state;
    case "SWITCH_CURRENCY":
      return {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      };
  }
};


export default reducer;
