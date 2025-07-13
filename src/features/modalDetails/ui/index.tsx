import { Box, Modal, Typography } from "@mui/material";
import { IModalDetailsProps } from "../types";
import { useStatusColor } from "@/src/shared/hooks/useStatusColor";

export const ModalDetails = ({ isOpen, pool, handleClose }: IModalDetailsProps) => {
  const { getColor } = useStatusColor();
  return (
    <Modal
      open={isOpen}
      onClose={handleClose}
      aria-labelledby="modal-modal-title"
      aria-describedby="modal-modal-description"
    >
      <Box sx={{
        position: 'absolute',
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        width: 600,
        bgcolor: 'background.paper',
        boxShadow: 24,
        p: 4,
      }}>
        <Typography id="modal-modal-title" variant="h6" component="h2">
          Подробности пула №{pool.id}
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 2 }}>
          Название: {pool.name}
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Хешрейт: {pool.hashrateTHs} TH/s
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Активные воркеры: {pool.activeWorkers}
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Процент отклонений: {pool.rejectRate}%
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Статус: <Typography component="span" sx={{ color: getColor(pool.status) }}>{pool.status}</Typography>
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Заработано BTC (24 часа): {pool.last24hRevenueBTC}
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Доступность: {pool.uptimePercent}%
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Локация: {pool.location}
        </Typography>
        <Typography id="modal-modal-description" sx={{ mt: 1 }}>
          Процент комиссии: {pool.feePercent}%
        </Typography>
      </Box>
    </Modal >
  );
};