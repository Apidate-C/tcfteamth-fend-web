import React, { useEffect, useRef, useState } from "react";
import Modal from "react-awesome-modal";
import { ModalStyle } from './style'

const ModalConfirmContent = ({ isOpenModal, confirmModal, closeModal, title, status }) => {
    return (
        <Modal visible={isOpenModal} width="400" height="200" effect="fadeInUp" onClickAway={closeModal}>
            <ModalStyle>
                {title ? <div className="title">{title}</div> : null}
                <div className="button-row">
                    {status === 'delete' ? <button className={`confirm default`} onClick={closeModal}><span>ยกเลิก</span></button> : null}
                    <button className={`confirm ${status}`} onClick={confirmModal}><span>ตกลง</span></button>
                </div>
            </ModalStyle>
        </Modal>
    )
};

export default ModalConfirmContent;