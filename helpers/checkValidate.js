const checkValidate = (value, status_validate) => {
    if (status_validate) {
        if (value && value.length > 0) {
            return false
        } else {
            return true
        }
    }
}
export { checkValidate }