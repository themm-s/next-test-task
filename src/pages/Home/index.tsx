"use client";
import { ModalDetails } from "@/src/features/modalDetails/ui";
import { useStatusColor } from "@/src/shared/hooks/useStatusColor";
import { Container, List, ListItem, ListItemText, Button, Box, Typography, TableContainer, Paper, Table, TableBody, TableCell, TableHead, TableRow, Modal } from "@mui/material";
import { Pool } from "@prisma/client";
import { useState } from "react";

export const Home = () => {
  const [loading, setLoading] = useState(false);
  const [open, setOpen] = useState(false);

  const [pools, setPools] = useState<Pool[]>([]);

  const [selectedPool, setSelectedPool] = useState<Pool | null>(null);

  const { getColor } = useStatusColor();

  const handleOpen = (pool: Pool) => {
    setSelectedPool(pool);
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
    setSelectedPool(null);
  };

  const handleFetchPools = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/pools');
      const data = await res.json();
      setPools(data);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <Container maxWidth={"lg"}>
      <Box display='flex' justifyContent='center'>
        <Button
          variant="contained"
          onClick={handleFetchPools}
          disabled={loading}
        >
          {loading ? 'Загрузка...' : 'Загрузить данные'}
        </Button>
      </Box>

      <TableContainer component={Paper}>
        <Table sx={{ minWidth: 650 }} aria-label="pool table">
          <TableHead>
            <TableRow>
              <TableCell>ID</TableCell>
              <TableCell align="right">Название</TableCell>
              <TableCell align="right">Хешрейт (THs)</TableCell>
              <TableCell align="right">Активные воркеры</TableCell>
              <TableCell align="right">Отклонения%</TableCell>
              <TableCell align="right">Статус</TableCell>
              <TableCell align="right"></TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {pools.map((pool) => (
              <TableRow
                key={pool.name}
                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {pool.id}
                </TableCell>
                <TableCell align="right">{pool.name}</TableCell>
                <TableCell align="right">{pool.activeWorkers}</TableCell>
                <TableCell align="right">{pool.hashrateTHs}</TableCell>
                <TableCell align="right">{pool.rejectRate}%</TableCell>
                <TableCell align="right" sx={{ color: getColor(pool.status) }}>{pool.status}</TableCell>
                <TableCell align="right">
                  <Button onClick={() => handleOpen(pool)}>
                    Подробнее
                  </Button>
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>

      {selectedPool && (
        <ModalDetails
          pool={selectedPool}
          isOpen={open}
          handleClose={handleClose}
        />
      )}
    </Container>
  );
};