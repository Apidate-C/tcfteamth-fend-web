import { apiGatewayInstance } from '../helpers/utils'

const handleUploadFile = async (file) => {
    const formData = new FormData()
    formData.append('file', file)
    const response = await apiGatewayInstance.post('/fileUpload/uploadFile', formData)
    if (response.data) {
        const { link = '' } = response.data
        return link
    } else {
        return 'ไฟล์ไม่ถูกต้อง'
    }
}

export { handleUploadFile }