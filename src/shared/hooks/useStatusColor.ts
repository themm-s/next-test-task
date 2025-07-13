type Status = 'ONLINE' | 'DEGRADED' | 'OFFLINE';

const STATUS_COLORS: Record<Status, string> = {
  ONLINE: "green",
  DEGRADED: "#ffb700",
  OFFLINE: "red"
} as const;

export const useStatusColor = () => {
  const getColor = (status: Status) => STATUS_COLORS[status];

  return {
    getColor
  };
};